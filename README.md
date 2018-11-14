# docker-imapfilter
This is a docker image running the awesome [imapfilter](https://github.com/lefcha/imapfilter) as a cron in a docker container.

# Motivation

I was searching for a solution to filter, tag, move and delete my emails independently from my server and client which is usable not only on a special provider. Its fully based on IMAP which most of the mailservers provide.

## Usage

First you have to create config.lua which we mount later into the container. Don't be scared! LUA is not that hard! A very helpful source was [this blogbost](https://ineed.coffee/3970/if-you-cant-beat-em-clean-em-using-imapfilter-for-remote-rules-to-an-imap-mailbox/). It teachs me, how to configure imapfilter. A good documentation you can also find [here](https://linux.die.net/man/5/imapfilter_config) 

```
docker run -d \
  -e "IMAP_USERNAME=${IMAP_USERNAME}" \
  -e "IMAP_HOST=${IMAP_HOST}" \
  -e "IMAP_PASSWORD=${PASSWORD}" \
  -v $(pwd):/root/.imapfilter/
```
