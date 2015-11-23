### ALIASES

# Usage example: ffmpeg source.m4a target.mp3
alias ffmpeg="docker run --rm -v $(pwd):/tmp/workdir -w="/tmp/workdir" jrottenberg/ffmpeg -i $1 $2"

# Usage: jekyll-dev or: jekyll <arguments>
alias jekyll-dev="docker run --rm -v $(pwd):/srv/jekyll -it -p 4000:4000 jekyll/jekyll jekyll s -w --limit_posts 20"
alias jekyll="docker run --rm -v $(pwd):/srv/jekyll -it -p 4000:4000 jekyll/jekyll jekyll s"

# TODO: Ansible

### Docker Management

alias dm-ssh='docker-machine ssh `docker-machine active`'
alias dm-ip='docker-machine ip `docker-machine active`'
alias dm-env='docker-machine env `docker-machine active`'
alias dm-inspect='docker-machine inspect `docker-machine active`'
alias dm-config='docker-machine config `docker-machine active`'
alias docker-stats="docker stats $(docker ps|grep -v 'NAMES'| rev | awk '{print $1}' | rev|tr '\n' ' ')"
alias dm-ps='docker ps --format="table {{ .ID }}\\t{{ .Status }}\\t{{ .Image }}\\t{{ .Names }}"'
alias dm-psa='docker ps -a --format="table {{ .ID }}\\t{{ .Status }}\\t{{ .Image }}\\t{{ .Names }}"'

alias dm-clean='docker ps -a -f status=exited -q | xargs docker rm -f'
alias dm-cleanimages="docker images | grep -i none | awk '{print $3}' | xargs docker rmi -f"
