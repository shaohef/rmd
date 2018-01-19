  RMD contributor
  ===============

Here list the main code contributor.

* Feng, Shaohe <shaohe.feng@intel.com> -- See Commit.History
* Dakshina Ilangovan <dakshina.ilangovan@intel.com>
* Qiao, Liyong <liyong.qiao@intel.com>

There also many other do contribution to this project.

TianJun, do a lot of research at the beginning of the project.
He also try to implement a C restful framework.
He, Shaohe and project owner do many discussions.
And get agreement to use go, and go-restful for restful framework.
Use Cgo to call C lib.
And shaohe give an [exmaple](https://github.com/shaohef/rdtagent)

Shaohe introduce:
* all rmd libs
* TLS whitelist Auth mechanism.
* CA revoke Asynchronous notification
* UnixSocket and Tls exist at the same time.
* Error handle
* Log
* Task Flow for rollback or transaction.
* plugin for rdt algorithm.
* resctr sysfs handler.
* Configure and it's template
* BDD test framework.
* Expose available cpus
* cache topology(cache, core, socket, numa relation), For lib to API.
* Bitmap
* supper RMD process auto quit
* ACL
* flock syscal wraper.
* CAT cache way grouping.
* get isolated CPUs.
* SanityCheck for RDM boot.
* cpu microarch by signature.
* ...
[more](https://github.com/shaohef/rmd/blob/master/Commit.History)


The project owner(boss) suggest many many tings.
include bolt DB.

Also many others has do a lot of design for it.

Thanks them all.
