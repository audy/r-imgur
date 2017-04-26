# set output device as pdf to a temp-file
# write to temp-file
# upload to imgur
# return URL
rimgur <- function(prefix='someplot') {
  filename = paste(prefix, '-%03d.png', sep='')
  png(filename = filename)
}

rimgur.upload <- function() {
  print(dev.off())
  Sys.glob("someplot*.png")
}

somedata <- c(1, 2, 3, 4, 5, 6, 7)
somedata2 <- c(100, 200, 300)

rimgur(prefix='asdf')

hist(somedata)
hist(somedata2)

url <- rimgur.upload()

message(url)
