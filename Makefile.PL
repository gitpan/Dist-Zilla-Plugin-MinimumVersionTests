
use strict;
use warnings;

 BEGIN { require 5.008; } 

use ExtUtils::MakeMaker 6.11;



my %WriteMakefileArgs = (
                       'test' => {
                                   'TESTS' => 't/*.t'
                                 },
                       'NAME' => 'Dist::Zilla::Plugin::MinimumVersionTests',
                       'DISTNAME' => 'Dist-Zilla-Plugin-MinimumVersionTests',
                       'CONFIGURE_REQUIRES' => {
                                                 'ExtUtils::MakeMaker' => '6.11'
                                               },
                       'AUTHOR' => 'Marcel Gruenauer <marcel@cpan.org>',
                       'BUILD_REQUIRES' => {},
                       'ABSTRACT' => 'release tests for minimum required versions',
                       'EXE_FILES' => [],
                       'VERSION' => '1.100700',
                       'PREREQ_PM' => {
                                        'English' => '0',
                                        'Test::More' => '0',
                                        'File::Find' => '0',
                                        'File::Temp' => '0',
                                        'Test::MinimumVersion' => '0',
                                        'Moose' => '0',
                                        'Dist::Zilla::Plugin::InlineFiles' => '0'
                                      },
                       'LICENSE' => 'perl'
                     );


delete $WriteMakefileArgs{LICENSE}
  unless eval { ExtUtils::MakeMaker->VERSION(6.31) };

WriteMakefile(%WriteMakefileArgs);



