%
% Copyright (c) 2010 Opensim Ltd.
% All rights reserved.
%
% Redistribution and use in source and binary forms, with or without
% modification, are permitted provided that the following conditions are met:
%     * Redistributions of source code must retain the above copyright
%       notice, this list of conditions and the following disclaimer.
%     * Redistributions in binary form must reproduce the above copyright
%       notice, this list of conditions and the following disclaimer in the
%       documentation and/or other materials provided with the distribution.
%     * Neither the name of the Opensim Ltd. nor the
%       names of its contributors may be used to endorse or promote products
%       derived from this software without specific prior written permission.
%
% THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND
% ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
% WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
% DISCLAIMED. IN NO EVENT SHALL Andras Varga or Opensim Ltd. BE LIABLE FOR ANY
% DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
% (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
% LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
% ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
% (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
% SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
%

\name{generateIndexFiles}
\alias{generateIndexFiles}
\title{Generates index files for vector files}
\description{
  Generates index files for vector files.
}

\usage{generateIndexFiles(vectorFiles, rebuild=FALSE)}
\arguments{
	\item{vectorFiles}{Character vector containing the names of the vector files to be indexed. Wildcards are allowed in file names.}
    \item{rebuild}{Logical value indicating that the vector files are fragmented and need rebuilding.}
}

\details{
Vector files need an index file for loading their data efficiently. These index data are generated
by the simulation and stored in '.vci' files in the same directory as the '.vec' file.
The index file can be rebuilt later by this command.

Old vector files (before version 2) should be rebuilt by specifying 'rebuild'=TRUE, to ensure
that the data of vectors are written out in chunks and can be efficiently indexed.
When 'rebuild'=FALSE the vector file is not modified. 
}

\keyword{file}
