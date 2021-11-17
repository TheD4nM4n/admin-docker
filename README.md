# Admin | The Official VGCUSA Discord Bot

**THIS IS THE DOCKER REPOSITORY. FOR THE ORIGINAL REPOSITORY, VISIT [HERE](https://github.com/TheD4nM4n/admin).**

Admin is a Discord bot designed for ease-of-use, meant for teachers who want to utilize the power of Discord to keep
students connected to each other, even outside of school.

## Who is Admin?

Admin is a lone android who sneaked onto the developer, Dan's, computer. After sneaking onto his computer, Admin hid in
the shadows and secretly watched Dan as he helped out with his school's Video Game Club. Admin loved what Dan was doing,
so one day, Admin decided to show himself and lend his hand to help out Dan and his Video Game Club!

## What does Admin do?

With a focus on education, Admin includes powerful moderation tools to keep your server free from harsh language.
Admin also includes polls, to gauge your server's feeling towards certain ideas!

# Features

*This piece of software is a work in progress. Work will continue at the pace of the developer(s).*

## Current features

- Welcome messages
    - Welcome messages automatically welcome people to your server
    - Make your own custom messages
    - Easy way to change the welcome channel
- Powerful moderation
    - Immediate deletion of messages with vulgar language
    - Add custom words to a blacklist
    - Utilize a default word list for easy moderation
    - Mute members to keep them from typing in chat channels

### Planned features

- Reaction roles
    - Automatically assign roles based on message reactions
    - Create custom links between emotes and roles
    - Use messages sent by other users as the base message
- Automatic moderation
    - Ticket system for reporting conduct
    - Automatic kicks/bans for repeat offenders
- Polls
    - Easy feedback from your server members
    - Use messages sent by other users as the base
    - Have results sent to a channel
  
## Self-hosting
Self hosting is best done through [Docker](https://www.docker.com/), and a Docker image is already available
[here](https://hub.docker.com/r/thed4nm4n/admin). The image is based on the Alpine fork of the Python image,
and should be light enough to run on just about anything. More information

If Docker is still too heavy for your environment, or you hate Docker with passion, you can use the provided
requirements.txt file to install the dependencies yourself within a virtual environment.
## Licensing

This software is open-source under the *GNU General Public License* (version 3), and all of its contents fall under
said license. License can be found in COPYING.txt.
