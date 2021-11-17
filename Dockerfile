
#    Copyright 2020 Daniel Poe
#
#    This file is a part of Admin.
#
#    Admin is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    Admin is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with Admin.  If not, see https://www.gnu.org/licenses/.

FROM node:17.1.0-bullseye
MAINTAINER TheD4nM4n thed4nm4n@gmail.com

WORKDIR /admin

# Adds required bot files and dependency files to the image
COPY assets ./assets/
COPY commands ./commands/
COPY data ./data/
COPY events ./events/
COPY COPYING.txt .
COPY index.js .
COPY LICENSE .
COPY package.json .
COPY package-lock.json .

# Installs dependencies from package.json
RUN npm install

# Runs the bot script
CMD ["node", "./index.js"]
