{
  activesupport = {
    dependencies = ["concurrent-ruby" "i18n" "minitest" "tzinfo"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "183az13i4fsm28d0l5xhbjpmcj3l1lxzcxlx8pi8zrbd933jwqd0";
      type = "gem";
    };
    version = "7.0.4";
  };
  addressable = {
    dependencies = ["public_suffix"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1ypdmpdn20hxp5vwxz3zc04r5xcwqc25qszdlg41h8ghdqbllwmw";
      type = "gem";
    };
    version = "2.8.1";
  };
  aliyun-sdk = {
    dependencies = ["nokogiri" "rest-client"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "17avsza5r4f6d0f2ajgy6clmasrxs7jd16hz7ljq502jkczmv4b5";
      type = "gem";
    };
    version = "0.8.0";
  };
  builder = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "045wzckxpwcqzrjr353cxnyaxgf0qg22jh00dcx7z38cys5g1jlr";
      type = "gem";
    };
    version = "3.2.4";
  };
  CFPropertyList = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hadm41xr1fq3qp74jd9l5q8l0j9083rgklgzsilllwaav7qrrid";
      type = "gem";
    };
    version = "2.3.6";
  };
  concurrent-ruby = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0s4fpn3mqiizpmpy2a24k4v365pv75y50292r8ajrv4i1p5b2k14";
      type = "gem";
    };
    version = "1.1.10";
  };
  domain_name = {
    dependencies = ["unf"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0lcqjsmixjp52bnlgzh4lg9ppsk52x9hpwdjd53k8jnbah2602h0";
      type = "gem";
    };
    version = "0.5.20190701";
  };
  dry-inflector = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1rw0xxx1yga8r8bwgpywgshvqwd0w6shy0s4y1qrsz0cjxfwga0i";
      type = "gem";
    };
    version = "0.3.0";
  };
  excon = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0cdc76kgr4f1mq4jwbmq1qvr9c15hb4r1cx4dvrdra13vy9sckb5";
      type = "gem";
    };
    version = "0.92.4";
  };
  fission = {
    dependencies = ["CFPropertyList"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09pmp1j1rr8r3pcmbn2na2ls7s1j9ijbxj99xi3a8r6v5xhjdjzh";
      type = "gem";
    };
    version = "0.5.0";
  };
  fog = {
    dependencies = ["fog-aliyun" "fog-atmos" "fog-aws" "fog-brightbox" "fog-cloudatcost" "fog-core" "fog-digitalocean" "fog-dnsimple" "fog-dynect" "fog-ecloud" "fog-google" "fog-internet-archive" "fog-joyent" "fog-json" "fog-local" "fog-openstack" "fog-ovirt" "fog-powerdns" "fog-profitbricks" "fog-rackspace" "fog-radosgw" "fog-riakcs" "fog-sakuracloud" "fog-serverlove" "fog-softlayer" "fog-storm_on_demand" "fog-terremark" "fog-vmfusion" "fog-voxel" "fog-vsphere" "fog-xenserver" "fog-xml" "ipaddress" "json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bzmxqppksdirx5fp9b2sr80kkb8w78zzkfbm0pnql7pbh21rvgl";
      type = "gem";
    };
    version = "1.42.1";
  };
  fog-aliyun = {
    dependencies = ["addressable" "aliyun-sdk" "fog-core" "fog-json" "ipaddress" "xml-simple"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f6cwnq4vq628lgv1wn7fzmwgcpv840zbmcwpfpiwy7b9dh388wg";
      type = "gem";
    };
    version = "0.4.0";
  };
  fog-atmos = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1aaxgnw9zy96gsh4h73kszypc32sx497s6bslvhfqh32q9d1y8c9";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-aws = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "00skbbgvhqzq6gpgzmw0957n0wf1y3vjgrdyq3sib0ghpyfgmig3";
      type = "gem";
    };
    version = "2.0.1";
  };
  fog-brightbox = {
    dependencies = ["dry-inflector" "fog-core" "fog-json" "mime-types"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z0azs8119v4v3xrds822pyv7137cy8kgsmbjmf96l717qzr4b4p";
      type = "gem";
    };
    version = "0.16.1";
  };
  fog-cloudatcost = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1320ax5x8gxdnaxkgzhmy751nip771ax7nyljfgqblw6l4m0gigy";
      type = "gem";
    };
    version = "0.1.2";
  };
  fog-core = {
    dependencies = ["builder" "excon" "formatador"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "02449kh2x3zj9xxszm02vy8zpbsrykvjrg5gj3kqcy2yizy2bhp3";
      type = "gem";
    };
    version = "1.45.0";
  };
  fog-digitalocean = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "03wbwp6fcl9ic38w99wv4iab96zzccl2ykmddcp6jvlwyp3x88d9";
      type = "gem";
    };
    version = "0.4.0";
  };
  fog-dnsimple = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0vkx74hgwaymgiw1swqcf2ik65jiznxhf3z50434dgvvn5zk65sw";
      type = "gem";
    };
    version = "1.0.0";
  };
  fog-dynect = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bmv12zjfbbcl33vg664bd6fp3q7rp0xi8n53i3707bi9zvf7d98";
      type = "gem";
    };
    version = "0.0.3";
  };
  fog-ecloud = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "18rb4qjad9xwwqvvpj8r2h0hi9svy71pm4d3fc28cdcnfarmdi06";
      type = "gem";
    };
    version = "0.3.0";
  };
  fog-google = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z4vmswpqwph04c0wqzrscns1d1wdm8kbxx457bv156mawzrhfj3";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-internet-archive = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1z9w23k9578jb95zilikdzjlv6hjssz7q9qyg2n18irnm52ayh72";
      type = "gem";
    };
    version = "0.0.2";
  };
  fog-joyent = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01aihain51b253pvf0al329305vq5w6ndfp18a6hcdqiybzizvb0";
      type = "gem";
    };
    version = "0.0.1";
  };
  fog-json = {
    dependencies = ["fog-core" "multi_json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1zj8llzc119zafbmfa4ai3z5s7c4vp9akfs0f9l2piyvcarmlkyx";
      type = "gem";
    };
    version = "1.2.0";
  };
  fog-local = {
    dependencies = ["fog-core"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yggsxd7c58p5i8zgvfw9rkqlg75l6hkbwnpgawd2sacwl4jsfr6";
      type = "gem";
    };
    version = "0.8.0";
  };
  fog-openstack = {
    dependencies = ["fog-core" "fog-json" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "11j18h61d3p0pcp9k5346lbj1lahab1dqybkrx9338932lmjn7ap";
      type = "gem";
    };
    version = "0.3.10";
  };
  fog-ovirt = {
    dependencies = ["activesupport" "fog-core" "fog-json" "fog-xml" "ovirt-engine-sdk"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1h3lwjjzc4xhfy3phnp2grx1k48mq03a7w4qc86c7n3qzraiajix";
      type = "gem";
    };
    version = "2.0.2";
  };
  fog-powerdns = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0y531ag9qcbyb9mq7lxv77rvdz9bc1igaplgv850z4krg9f7pq7m";
      type = "gem";
    };
    version = "0.2.0";
  };
  fog-profitbricks = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0879dfgdd9xby0l41a0rq0nzj9sj24l34knkjf48rdihvi7pbcl4";
      type = "gem";
    };
    version = "4.1.1";
  };
  fog-rackspace = {
    dependencies = ["fog-core" "fog-json" "fog-xml" "ipaddress"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "15hqiv60skk4c0gw8ihn4v8vdl0ipbw4yb8zbaq6nyyvg59wfcfm";
      type = "gem";
    };
    version = "0.1.6";
  };
  fog-radosgw = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nslgv8yp5qkiryj3zsm91gs7s6i626igj61kwxjjwk2yv6swyr6";
      type = "gem";
    };
    version = "0.0.5";
  };
  fog-riakcs = {
    dependencies = ["fog-core" "fog-json" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1nbxc4dky3agfwrmgm1aqmi59p6vnvfnfbhhg7xpg4c2cf41whxm";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-sakuracloud = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08krsn9sk5sx0aza812g31r169bd0zanb8pq5am3a64j6azarimd";
      type = "gem";
    };
    version = "1.7.5";
  };
  fog-serverlove = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0hxgmwzygrw25rbsy05i6nzsyr0xl7xj5j2sjpkb9n9wli5sagci";
      type = "gem";
    };
    version = "0.1.2";
  };
  fog-softlayer = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0f2crz9g3s6m6casr3bsdqc7lp55gd22iq99r63zi80fx37c1pzf";
      type = "gem";
    };
    version = "1.1.4";
  };
  fog-storm_on_demand = {
    dependencies = ["fog-core" "fog-json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0fif1x8ci095b2yyilf65n7x6iyvn448azrsnmwsdkriy8vxxv3y";
      type = "gem";
    };
    version = "0.1.1";
  };
  fog-terremark = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "01lfkh9jppj0iknlklmwyb7ym3bfhkq58m3absb6rf5a5mcwi3lf";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-vmfusion = {
    dependencies = ["fission" "fog-core"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0g0l0k9ylxk1h9pzqr6h2ba98fl47lpp3j19lqv4jxw0iw1rqxn4";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-voxel = {
    dependencies = ["fog-core" "fog-xml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "10skdnj59yf4jpvq769njjrvh2l0wzaa7liva8n78qq003mvmfgx";
      type = "gem";
    };
    version = "0.1.0";
  };
  fog-vsphere = {
    dependencies = ["fog-core" "rbvmomi"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0z45yv1v7m45cswn40liw6y2qxbnr9yrxzn36vqw8435qxr39xvg";
      type = "gem";
    };
    version = "3.5.2";
  };
  fog-xenserver = {
    dependencies = ["fog-core" "fog-xml" "xmlrpc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0maqa0hchk5pyasn0yjbh3ackb071128s0102adzijhga0k6vvhz";
      type = "gem";
    };
    version = "1.0.0";
  };
  fog-xml = {
    dependencies = ["fog-core" "nokogiri"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vyyb2429xqzys39xyk2r3fal80qqn397aj2kqsjrgg2y6m59i41";
      type = "gem";
    };
    version = "0.1.4";
  };
  formatador = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0mprf1dwznz5ld0q1jpbyl59fwnwk6azspnd0am7zz7kfg3pxhv5";
      type = "gem";
    };
    version = "0.3.0";
  };
  http-accept = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "09m1facypsdjynfwrcv19xcb1mqg8z6kk31g8r33pfxzh838c9n6";
      type = "gem";
    };
    version = "1.7.0";
  };
  http-cookie = {
    dependencies = ["domain_name"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "13rilvlv8kwbzqfb644qp6hrbsj82cbqmnzcvqip1p6vqx36sxbk";
      type = "gem";
    };
    version = "1.0.5";
  };
  i18n = {
    dependencies = ["concurrent-ruby"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vdcchz7jli1p0gnc669a7bj3q1fv09y9ppf0y3k0vb1jwdwrqwi";
      type = "gem";
    };
    version = "1.12.0";
  };
  iniparse = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1wb1qy4i2xrrd92dc34pi7q7ibrjpapzk9y465v0n9caiplnb89n";
      type = "gem";
    };
    version = "1.5.0";
  };
  ipaddress = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1x86s0s11w202j6ka40jbmywkrx8fhq8xiy8mwvnkhllj57hqr45";
      type = "gem";
    };
    version = "0.8.3";
  };
  json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0yk5d10yvspkc5jyvx9gc1a9pn1z8v4k2hvjk1l88zixwf3wf3cl";
      type = "gem";
    };
    version = "2.6.2";
  };
  mime-types = {
    dependencies = ["mime-types-data"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0ipw892jbksbxxcrlx9g5ljq60qx47pm24ywgfbyjskbcl78pkvb";
      type = "gem";
    };
    version = "3.4.1";
  };
  mime-types-data = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "003gd7mcay800k2q4pb2zn8lwwgci4bhi42v2jvlidm8ksx03i6q";
      type = "gem";
    };
    version = "3.2022.0105";
  };
  mini_portile2 = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rapl1sfmfi3bfr68da4ca16yhc0pp93vjwkj7y3rdqrzy3b41hy";
      type = "gem";
    };
    version = "2.8.0";
  };
  minitest = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0516ypqlx0mlcfn5xh7qppxqc3xndn1fnadxawa8wld5dkcimy30";
      type = "gem";
    };
    version = "5.16.3";
  };
  multi_json = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pb1g1y3dsiahavspyzkdy39j4q377009f6ix0bh1ag4nqw43l0z";
      type = "gem";
    };
    version = "1.15.0";
  };
  netrc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0gzfmcywp1da8nzfqsql2zqi648mfnx6qwkig3cv36n9m0yy676y";
      type = "gem";
    };
    version = "0.11.0";
  };
  nokogiri = {
    dependencies = ["racc" "mini_portile2"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "sha256-ecJ5KYsvIv1Odg9JmQx5MENrrBsc/v97rP8ZLzDt6jw=";
      type = "gem";
    };
    version = "1.13.8";
  };
  optimist = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1vg2chy1cfmdj6c1gryl8zvjhhmb3plwgyh1jfnpq4fnfqv7asrk";
      type = "gem";
    };
    version = "3.0.1";
  };
  ovirt-engine-sdk = {
    dependencies = ["json"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0m2acfd6l6k9xvqxvwivcnwji9974ac7498znydxh69z1x3rr8nm";
      type = "gem";
    };
    version = "4.4.1";
  };
  public_suffix = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0sqw1zls6227bgq38sxb2hs8nkdz4hn1zivs27mjbniswfy4zvi6";
      type = "gem";
    };
    version = "5.0.0";
  };
  racc = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0la56m0z26j3mfn1a9lf2l03qx1xifanndf9p3vx1azf6sqy7v9d";
      type = "gem";
    };
    version = "1.6.0";
  };
  rbvmomi = {
    dependencies = ["builder" "json" "nokogiri" "optimist"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "12gsnkrhk03qkxr8zrfq3vkpg8qcylvayja2qavkwalwg8iry3sc";
      type = "gem";
    };
    version = "2.4.1";
  };
  rest-client = {
    dependencies = ["http-accept" "http-cookie" "mime-types" "netrc"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1qs74yzl58agzx9dgjhcpgmzfn61fqkk33k1js2y5yhlvc5l19im";
      type = "gem";
    };
    version = "2.1.0";
  };
  rexml = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "08ximcyfjy94pm1rhcx04ny1vx2sk0x4y185gzn86yfsbzwkng53";
      type = "gem";
    };
    version = "3.2.5";
  };
  tzinfo = {
    dependencies = ["concurrent-ruby"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0rx114mpqnw2k4h98vc0rs0x0bmf0img84yh8mkkjkal07cjydf5";
      type = "gem";
    };
    version = "2.0.5";
  };
  unf = {
    dependencies = ["unf_ext"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0bh2cf73i2ffh4fcpdn9ir4mhq8zi50ik0zqa1braahzadx536a9";
      type = "gem";
    };
    version = "0.1.4";
  };
  unf_ext = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1yj2nz2l101vr1x9w2k83a0fag1xgnmjwp8w8rw4ik2rwcz65fch";
      type = "gem";
    };
    version = "0.0.8.2";
  };
  vagrant-aws = {
    dependencies = ["fog" "iniparse"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0nkvw6779fbq8gn6kg29kbwvm247d52xp6x8w6l18jy2c7s1r446";
      type = "gem";
    };
    version = "0.7.2";
  };
  webrick = {
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1d4cvgmxhfczxiq5fr534lmizkhigd15bsx5719r5ds7k7ivisc7";
      type = "gem";
    };
    version = "1.7.0";
  };
  xml-simple = {
    dependencies = ["rexml"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "0pb9plyl71mdbjr4kllfy53qx6g68ryxblmnq9dilvy837jk24fj";
      type = "gem";
    };
    version = "1.1.9";
  };
  xmlrpc = {
    dependencies = ["webrick"];
    groups = ["default"];
    platforms = [];
    source = {
      remotes = ["https://rubygems.org"];
      sha256 = "1xa79ry3976ylap38cr5g6q3m81plm611flqd3dwgnmgbkycb6jp";
      type = "gem";
    };
    version = "0.3.2";
  };
}
