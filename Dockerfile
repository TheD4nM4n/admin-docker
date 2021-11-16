
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

FROM python:3.10.0b3-alpine3.14
MAINTAINER TheD4nM4n thed4nm4n@gmail.com

# Adds required bot files and dependency files to the image
ADD admin ./admin/
ADD requirements.txt .
ADD core.py .

# Updates and installs tools required to build Python dependencies
RUN apk update
RUN apk add g++ make

# Installs Python dependencies
RUN pip install -r ./requirements.txt

# Runs the bot script
CMD ["python", "-u", "core.py"]