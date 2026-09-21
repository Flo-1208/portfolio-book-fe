uvr::init()
uvr::r_install("4.6.1")
uvr::r_pin(version = "4.6.1")
uvr::add("sf")
uvr::add("tidyverse")


#if someonse clones the repo
uvr::sync()