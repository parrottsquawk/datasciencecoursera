source("./describe_data.R")

feature.labels <- "./UCI HAR Dataset/features.txt"
features <- read.csv(feature.labels,sep=" ",header=F)
features$V2 <- as.character(features$V2)

activity.labels <- "./UCI HAR Dataset//activity_labels.txt"
activities <- read.csv(activity.labels,sep=" ",header=F)
activities$V2 <- as.character(activities$V2)

tst.subjects.file <- "./UCI HAR Dataset/test/subject_test.txt"
tst.X.file <- "./UCI HAR Dataset/test/X_test.txt"
tst.Y.file <- "./UCI HAR Dataset/test/Y_test.txt"
tst.subjects <- read.table(tst.subjects.file)
tst.X <- read.table(tst.X.file)
tst.Y <- read.table(tst.Y.file)

trn.subjects.file <- "./UCI HAR Dataset/train/subject_train.txt"
trn.X.file <- "./UCI HAR Dataset/train/X_train.txt"
trn.Y.file <- "./UCI HAR Dataset/train/Y_train.txt"
trn.subjects <- read.table(trn.subjects.file)
trn.X <- read.table(trn.X.file)
trn.Y <- read.table(trn.Y.file)

data.pattern <- grepl(pattern = "std\\(\\)|mean\\(\\)", x = features$V2)
features.active <- features[data.pattern,]$V2
lbl.tokens <- sort(unique(unlist(lapply(strsplit(features.active,split = '-',), function(x) x[1]))))

mrg.subjects <- rbind(trn.subjects, tst.subjects)
mrg.X <- rbind(trn.X,tst.X)
mrg.Y <- data.frame(merge(x = rbind(trn.Y,tst.Y), y = activities, by.x ="V1", by.y="V1")$V2)
colnames(mrg.Y) <- c("Label.Activity")
colnames(mrg.subjects) <- c("Subject.ID")
colnames(mrg.X) <- features$V2

mrg.fltr <- mrg.X[features.active]
colnames(mrg.fltr) <- lapply(colnames(mrg.fltr),describe_data)

mrg.data <- cbind(mrg.subjects,mrg.Y,mrg.fltr)
mrg.tidy <- aggregate(. ~ Subject.ID + Label.Activity, data=mrg.data, FUN = mean)
write.table(mrg.tidy, file="./mrg_tidy.txt", sep="\t", row.names=FALSE)
