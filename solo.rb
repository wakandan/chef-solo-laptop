root = File.expand_path(File.dirname(__FILE__))

file_cache_path root + '/.cache'
cookbook_path [root + '/cookbooks', root+'/server-cookbooks']
