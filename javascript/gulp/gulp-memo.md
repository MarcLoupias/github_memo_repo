# gulp memo

- [gulp ground scheme] (https://medium.com/@contrahacks/gulp-3828e8126466#.add1bndgp)
built upon [vinyl] (https://github.com/gulpjs/vinyl) and [vinyl-fs] (https://github.com/gulpjs/vinyl-fs)

- [gulp API] (https://github.com/gulpjs/gulp/blob/master/docs/API.md)


## quick ref (the bricks)
- [gulp task] (https://github.com/gulpjs/gulp/blob/master/docs/API.md#gulptaskname-deps-fn) to define a task
- [gulp src] (https://github.com/gulpjs/gulp/blob/master/docs/API.md#gulpsrcglobs-options) to define files reading
- [gulp dest] (https://github.com/gulpjs/gulp/blob/master/docs/API.md#gulpdestpath-options) to define files writing
- [gulp watch] (https://github.com/gulpjs/gulp/blob/master/docs/API.md#gulpwatchglob--opts-tasks-or-gulpwatchglob--opts-cb) to observe files
- [nodejs stream] (https://nodejs.org/api/stream.html) the gulp paradigm
- [nodejs pipe] (https://nodejs.org/api/stream.html#stream_readable_pipe_destination_options) to chain gulp tasks
- [vinyl fs] (https://github.com/gulpjs/vinyl-fs) Vinyl adapter for the file system
- [vinyl] (https://github.com/gulpjs/vinyl) Virtual file format
