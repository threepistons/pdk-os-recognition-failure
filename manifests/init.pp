# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include test
class test {

  notify { 'osfam':
    message => "I am a ${facts['osfamily']} system"
  }

}
