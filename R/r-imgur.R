# set output device as pdf to a temp-file
# write to temp-file
# upload to imgur
# return URL
rimgur <- function(filename='test.png') {
  png(filename=filename)
}

rimgur.upload <- function() {
  dev.off()
  'test.png'
}

somedata <- c(1, 2, 3, 4, 5, 6, 7)
somedata2 <- c(100, 200, 300)

rimgur()

hist(somedata)
hist(somedata2)

url <- rimgur.upload()

message(url)
