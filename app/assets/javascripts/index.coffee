console.log "test"

require ["controllers/table_controller"], () ->
	MyApp = new Backbone.Marionette.Application()
	MyApp.addRegions
      mainRegion: ".table-area"
   
    models = _.map([
    		{"id":1,"first_name":"Jason","last_name":"Garza","country":"Laos","ip_address":"136.252.36.170","email":"jgarza@livetube.org"}
    		{"id":33,"first_name":"Juan","last_name":"Collins","country":"Kuwait","ip_address":"116.138.255.32","email":"jcollins@yamia.com"}
			  {"id":36,"first_name":"Kevin","last_name":"Robinson","country":"Mauritius","ip_address":"253.134.105.115","email":"krobinson@aimbu.org"}
        {"id":36,"first_name":"Kevin","last_name":"Robinson","country":"Mauritius","ip_address":"253.134.105.115","email":"krobinson@aimbu.org"},
        {"id":37,"first_name":"Matthew","last_name":"Ferguson","country":"Cape Verde","ip_address":"4.78.105.116","email":"mferguson@bubbletube.name"},
        {"id":38,"first_name":"Johnny","last_name":"Nichols","country":"Greece","ip_address":"39.134.42.51","email":"jnichols@zazio.org"},
        {"id":39,"first_name":"Mildred","last_name":"Medina","country":"Ghana","ip_address":"91.20.233.184","email":"mmedina@brainsphere.info"},
        {"id":40,"first_name":"Ernest","last_name":"Washington","country":"Luxembourg","ip_address":"94.230.201.233","email":"ewashington@devify.org"},
        {"id":41,"first_name":"Phillip","last_name":"Hart","country":"Nigeria","ip_address":"114.9.202.25","email":"phart@jazzy.name"},
        {"id":42,"first_name":"Roger","last_name":"Vasquez","country":"Jordan","ip_address":"139.224.157.5","email":"rvasquez@viva.biz"},
        {"id":43,"first_name":"Cheryl","last_name":"Johnson","country":"Palestinian Territory, Occupied","ip_address":"123.227.176.56","email":"cjohnson@browsedrive.info"},
        {"id":44,"first_name":"Carolyn","last_name":"Fields","country":"Vietnam","ip_address":"103.136.38.142","email":"cfields@demivee.info"},
        {"id":45,"first_name":"Joan","last_name":"Garcia","country":"Denmark","ip_address":"48.209.26.167","email":"jgarcia@jazzy.gov"},
        {"id":46,"first_name":"Jerry","last_name":"Larson","country":"Azerbaijan","ip_address":"225.99.186.153","email":"jlarson@nlounge.mil"},
        {"id":47,"first_name":"Jeffrey","last_name":"Murray","country":"Argentina","ip_address":"248.128.199.234","email":"jmurray@skiptube.edu"},
        {"id":48,"first_name":"Maria","last_name":"Boyd","country":"Lesotho","ip_address":"196.130.31.204","email":"mboyd@topicblab.mil"},
        {"id":49,"first_name":"Lawrence","last_name":"Phillips","country":"Congo, Republic of","ip_address":"119.11.68.142","email":"lphillips@chatterpoint.info"},
        {"id":50,"first_name":"Larry","last_name":"Morgan","country":"\u00c5land","ip_address":"167.208.1.246","email":"lmorgan@centizu.com"},
        {"id":51,"first_name":"Arthur","last_name":"Ramos","country":"British Virgin Islands","ip_address":"97.25.157.67","email":"aramos@topicstorm.gov"},
        {"id":52,"first_name":"Julia","last_name":"Lopez","country":"American Samoa","ip_address":"142.88.89.180","email":"jlopez@buzzbean.biz"},
        {"id":53,"first_name":"Teresa","last_name":"Harvey","country":"Germany","ip_address":"3.184.229.226","email":"tharvey@gabspot.biz"},
        {"id":54,"first_name":"Willie","last_name":"Simpson","country":"Iraq","ip_address":"93.7.27.64","email":"wsimpson@skidoo.name"},
        {"id":55,"first_name":"Susan","last_name":"Sanchez","country":"Jersey","ip_address":"120.14.79.144","email":"ssanchez@linklinks.name"},
        {"id":56,"first_name":"Jean","last_name":"Holmes","country":"Guinea-Bissau","ip_address":"48.72.21.172","email":"jholmes@rhybox.biz"},
        {"id":57,"first_name":"Ann","last_name":"Wright","country":"Zimbabwe","ip_address":"85.158.44.25","email":"awright@zoomlounge.net"},
        {"id":58,"first_name":"David","last_name":"Roberts","country":"Liberia","ip_address":"184.88.159.141","email":"droberts@flashpoint.edu"}
        {"id":60,"first_name":"Paula","last_name":"Little","country":"Togo","ip_address":"184.113.206.192","email":"plittle@jaxbean.name"},
        {"id":61,"first_name":"Mark","last_name":"Ferguson","country":"Falkland Islands (Malvinas)","ip_address":"139.66.188.142","email":"mferguson@kaymbo.edu"},
        {"id":62,"first_name":"Marie","last_name":"Nelson","country":"Saint Martin","ip_address":"152.252.162.26","email":"mnelson@thoughtworks.info"},
        {"id":63,"first_name":"Sara","last_name":"Hansen","country":"Guadeloupe","ip_address":"9.185.73.112","email":"shansen@meetz.gov"},
        {"id":64,"first_name":"Charles","last_name":"Hernandez","country":"Iraq","ip_address":"208.237.14.18","email":"chernandez@kaymbo.name"},
        {"id":65,"first_name":"Lillian","last_name":"Rogers","country":"Cape Verde","ip_address":"222.16.209.50","email":"lrogers@dabtype.mil"},
        {"id":66,"first_name":"Ryan","last_name":"Crawford","country":"Kyrgyzstan","ip_address":"26.13.83.118","email":"rcrawford@blogxs.net"},
        {"id":67,"first_name":"Wayne","last_name":"Montgomery","country":"Poland","ip_address":"135.171.7.106","email":"wmontgomery@mydo.com"},
        {"id":68,"first_name":"Paul","last_name":"Murray","country":"Jamaica","ip_address":"13.35.237.29","email":"pmurray@twimm.biz"},
        {"id":69,"first_name":"Betty","last_name":"Warren","country":"Macedonia","ip_address":"247.234.58.186","email":"bwarren@skinte.com"},
        {"id":70,"first_name":"Ashley","last_name":"Myers","country":"French Southern Territories","ip_address":"52.208.219.26","email":"amyers@innoz.edu"},
        {"id":71,"first_name":"William","last_name":"Riley","country":"Cayman Islands","ip_address":"143.175.234.106","email":"wriley@photobug.info"},
        {"id":72,"first_name":"Marilyn","last_name":"Alexander","country":"Suriname","ip_address":"106.45.157.221","email":"malexander@jabbersphere.edu"},
        {"id":73,"first_name":"Terry","last_name":"Brown","country":"USSR","ip_address":"230.134.249.185","email":"tbrown@digitube.edu"},
        {"id":74,"first_name":"Diane","last_name":"Smith","country":"Sudan","ip_address":"138.135.43.152","email":"dsmith@bubbletube.biz"},
        {"id":75,"first_name":"Catherine","last_name":"Watson","country":"Christmas Island","ip_address":"150.117.221.91","email":"cwatson@rhynoodle.info"},
        {"id":76,"first_name":"Carlos","last_name":"Stephens","country":"Russia","ip_address":"56.7.97.168","email":"cstephens@kamba.info"},
        {"id":77,"first_name":"Joseph","last_name":"Hart","country":"Tunisia","ip_address":"20.234.242.214","email":"jhart@devbug.gov"},
        {"id":78,"first_name":"Michael","last_name":"Edwards","country":"France","ip_address":"176.31.9.93","email":"medwards@blogpad.edu"},
        {"id":79,"first_name":"Patrick","last_name":"Bell","country":"Swaziland","ip_address":"227.202.72.224","email":"pbell@meevee.gov"},
        {"id":80,"first_name":"Patricia","last_name":"Romero","country":"Palestinian Territory, Occupied","ip_address":"119.139.169.251","email":"promero@feedspan.edu"},
        {"id":81,"first_name":"Julia","last_name":"Gibson","country":"Czech Republic","ip_address":"198.209.19.101","email":"jgibson@edgepulse.org"},
        {"id":82,"first_name":"Jose","last_name":"Pierce","country":"Japan","ip_address":"25.30.254.21","email":"jpierce@devbug.gov"},
        {"id":83,"first_name":"Christopher","last_name":"Cunningham","country":"Isle of Man","ip_address":"47.43.236.252","email":"ccunningham@quatz.mil"},
        {"id":84,"first_name":"Kimberly","last_name":"Gray","country":"United Arab Emirates","ip_address":"92.222.245.162","email":"kgray@snaptags.info"},
        {"id":85,"first_name":"Samuel","last_name":"King","country":"Anguilla","ip_address":"229.177.224.21","email":"sking@fanoodle.net"},
        {"id":86,"first_name":"Christina","last_name":"Brown","country":"Bolivia","ip_address":"114.97.42.24","email":"cbrown@devpoint.org"},
        {"id":87,"first_name":"Jack","last_name":"Payne","country":"Angola","ip_address":"95.217.243.171","email":"jpayne@babbleblab.edu"},
        {"id":88,"first_name":"Kathy","last_name":"Burke","country":"Egypt","ip_address":"168.25.239.90","email":"kburke@photofeed.gov"},
        {"id":89,"first_name":"Joan","last_name":"Lee","country":"Belarus","ip_address":"180.42.147.218","email":"jlee@npath.gov"},
        {"id":90,"first_name":"Cynthia","last_name":"Crawford","country":"Peru","ip_address":"170.83.26.253","email":"ccrawford@meevee.name"},
        {"id":91,"first_name":"Lois","last_name":"Fields","country":"Martinique","ip_address":"184.32.143.77","email":"lfields@tagcat.org"},
        {"id":92,"first_name":"Steven","last_name":"Adams","country":"Antarctica","ip_address":"198.193.122.234","email":"sadams@brightbean.info"},
        {"id":93,"first_name":"Douglas","last_name":"Watson","country":"Monaco","ip_address":"109.241.116.208","email":"dwatson@oyoyo.biz"},
        {"id":94,"first_name":"Michelle","last_name":"Jones","country":"Turks and Caicos Islands","ip_address":"145.51.18.15","email":"mjones@dabshots.name"},
        {"id":95,"first_name":"Carolyn","last_name":"Harrison","country":"Croatia","ip_address":"95.142.205.152","email":"charrison@ooba.org"},
        {"id":96,"first_name":"Jane","last_name":"Alvarez","country":"Montenegro","ip_address":"147.191.220.100","email":"jalvarez@oyope.gov"},
        {"id":97,"first_name":"Christine","last_name":"Cooper","country":"Aruba","ip_address":"188.134.154.225","email":"ccooper@mycat.mil"},
        {"id":98,"first_name":"Jacqueline","last_name":"Moore","country":"Armenia","ip_address":"101.1.172.123","email":"jmoore@lazzy.gov"},
        {"id":99,"first_name":"Norma","last_name":"Frazier","country":"Laos","ip_address":"254.35.128.197","email":"nfrazier@yotz.info"},
        {"id":100,"first_name":"Christine","last_name":"Murray","country":"Christmas Island","ip_address":"198.32.27.141","email":"cmurray@thoughtmix.name"},
        {"id":101,"first_name":"Joe","last_name":"Watson","country":"Fiji","ip_address":"58.2.105.86","email":"jwatson@viva.gov"},
        {"id":102,"first_name":"Kimberly","last_name":"Edwards","country":"Kyrgyzstan","ip_address":"10.170.25.194","email":"kedwards@skipstorm.biz"},
        {"id":103,"first_name":"Ernest","last_name":"Sanders","country":"Madagascar","ip_address":"107.154.128.15","email":"esanders@skyba.gov"},
        {"id":104,"first_name":"Mary","last_name":"Berry","country":"Lebanon","ip_address":"91.101.118.187","email":"mberry@babbleset.biz"},
        {"id":105,"first_name":"Charles","last_name":"Nguyen","country":"Benin","ip_address":"152.159.109.93","email":"cnguyen@jaxspan.net"},
        {"id":106,"first_name":"Willie","last_name":"Ross","country":"Botswana","ip_address":"251.227.218.19","email":"wross@quaxo.net"},
        {"id":107,"first_name":"Amy","last_name":"Hill","country":"Guatemala","ip_address":"22.7.71.10","email":"ahill@chatterbridge.info"},
        {"id":108,"first_name":"Jennifer","last_name":"Crawford","country":"Greece","ip_address":"104.191.226.120","email":"jcrawford@plajo.name"},
        {"id":109,"first_name":"Catherine","last_name":"Taylor","country":"Cook Islands","ip_address":"19.132.10.55","email":"ctaylor@tavu.org"},
        {"id":110,"first_name":"Mary","last_name":"Wheeler","country":"Croatia","ip_address":"5.207.152.198","email":"mwheeler@meezzy.biz"},
        {"id":111,"first_name":"Raymond","last_name":"Cole","country":"Kazakhstan","ip_address":"5.105.102.246","email":"rcole@jaloo.org"},
        {"id":112,"first_name":"Tammy","last_name":"Hamilton","country":"French Southern Territories","ip_address":"208.114.230.1","email":"thamilton@tagfeed.info"},
        {"id":113,"first_name":"Raymond","last_name":"White","country":"Sudan","ip_address":"144.6.76.118","email":"rwhite@roombo.edu"},
        {"id":114,"first_name":"Louise","last_name":"Mccoy","country":"Nigeria","ip_address":"65.26.137.224","email":"lmccoy@tavu.org"},
        {"id":115,"first_name":"Sarah","last_name":"Wheeler","country":"Chad","ip_address":"113.189.172.212","email":"swheeler@innojam.info"},
        {"id":116,"first_name":"Virginia","last_name":"Hunt","country":"Cambodia","ip_address":"44.165.84.135","email":"vhunt@cogidoo.info"},
        {"id":117,"first_name":"Janice","last_name":"Mason","country":"Cyprus","ip_address":"45.156.56.129","email":"jmason@mymm.org"},
        {"id":118,"first_name":"Ashley","last_name":"Rodriguez","country":"Comoros","ip_address":"200.182.30.230","email":"arodriguez@aivee.org"},
        {"id":119,"first_name":"Carolyn","last_name":"Jordan","country":"Dominican Republic","ip_address":"148.9.53.168","email":"cjordan@quinu.mil"},
        {"id":120,"first_name":"Angela","last_name":"Chavez","country":"New Zealand","ip_address":"94.146.33.201","email":"achavez@meezzy.biz"},
        {"id":121,"first_name":"Melissa","last_name":"Harper","country":"Guinea-Bissau","ip_address":"184.87.156.79","email":"mharper@cogidoo.com"},
        {"id":122,"first_name":"Lillian","last_name":"Wells","country":"Suriname","ip_address":"48.164.233.141","email":"lwells@nlounge.com"},
        {"id":123,"first_name":"Diana","last_name":"Kelly","country":"Saint Barthelemy","ip_address":"61.107.28.91","email":"dkelly@abatz.name"},
        {"id":124,"first_name":"Bonnie","last_name":"Turner","country":"Anguilla","ip_address":"17.224.106.15","email":"bturner@kwimbee.net"},
        {"id":125,"first_name":"Roger","last_name":"Olson","country":"Croatia","ip_address":"192.52.43.219","email":"rolson@youtags.info"},
        {"id":126,"first_name":"Jimmy","last_name":"Ross","country":"Italy","ip_address":"245.230.215.187","email":"jross@dabfeed.edu"},
        {"id":127,"first_name":"Betty","last_name":"Parker","country":"Egypt","ip_address":"212.241.184.45","email":"bparker@innoz.info"},
        {"id":128,"first_name":"Bruce","last_name":"Ross","country":"Laos","ip_address":"154.48.236.64","email":"bross@oozz.mil"},
        {"id":129,"first_name":"Sean","last_name":"Welch","country":"Belarus","ip_address":"84.132.56.131","email":"swelch@fiveclub.com"},
        {"id":130,"first_name":"Kathryn","last_name":"Ryan","country":"Taiwan","ip_address":"15.43.8.19","email":"kryan@babbleset.net"},
        {"id":131,"first_name":"Ruth","last_name":"Butler","country":"Sierra Leone","ip_address":"28.185.126.176","email":"rbutler@voonix.gov"},
        {"id":132,"first_name":"Gary","last_name":"Coleman","country":"Anguilla","ip_address":"175.140.195.7","email":"gcoleman@agivu.com"},
        {"id":133,"first_name":"Ruth","last_name":"Wallace","country":"Syria","ip_address":"239.206.73.223","email":"rwallace@jaxworks.edu"},
        {"id":134,"first_name":"William","last_name":"Bailey","country":"Western Sahara","ip_address":"182.47.132.153","email":"wbailey@buzzdog.org"},
        {"id":135,"first_name":"Lois","last_name":"Lewis","country":"Netherlands Antilles","ip_address":"141.156.75.120","email":"llewis@gabvine.com"},
        {"id":136,"first_name":"Joshua","last_name":"Franklin","country":"Cyprus","ip_address":"242.53.114.247","email":"jfranklin@cogidoo.name"},
        {"id":137,"first_name":"Steve","last_name":"Fowler","country":"Benin","ip_address":"27.219.21.1","email":"sfowler@zoomzone.name"},
        {"id":138,"first_name":"Amanda","last_name":"Dunn","country":"Nicaragua","ip_address":"182.237.126.39","email":"adunn@blogtag.gov"},
        {"id":139,"first_name":"Karen","last_name":"Medina","country":"Sri Lanka","ip_address":"41.27.219.146","email":"kmedina@quire.edu"},
        {"id":140,"first_name":"Rebecca","last_name":"Phillips","country":"Bangladesh","ip_address":"40.36.165.185","email":"rphillips@camido.edu"},
        {"id":141,"first_name":"Aaron","last_name":"Wells","country":"Barbados","ip_address":"141.177.182.184","email":"awells@wikibox.mil"},
        {"id":142,"first_name":"Kevin","last_name":"Mitchell","country":"French Polynesia","ip_address":"211.97.85.193","email":"kmitchell@tanoodle.name"},
        {"id":143,"first_name":"Patricia","last_name":"Jacobs","country":"China","ip_address":"67.117.61.226","email":"pjacobs@yadel.mil"},
        {"id":144,"first_name":"Ashley","last_name":"Hernandez","country":"Rwanda","ip_address":"135.71.100.49","email":"ahernandez@jabbertype.biz"},
        {"id":145,"first_name":"Kevin","last_name":"Wilson","country":"Belarus","ip_address":"215.91.158.126","email":"kwilson@tazz.mil"},
        {"id":146,"first_name":"Gary","last_name":"Cox","country":"Tajikistan","ip_address":"221.137.251.8","email":"gcox@miboo.name"},
        {"id":147,"first_name":"Nicole","last_name":"Campbell","country":"Greenland","ip_address":"204.36.199.235","email":"ncampbell@yodo.mil"},
        {"id":148,"first_name":"Sean","last_name":"Warren","country":"Myanmar","ip_address":"9.222.43.242","email":"swarren@jetpulse.mil"},
        {"id":149,"first_name":"Betty","last_name":"Wagner","country":"Marshall Islands","ip_address":"40.68.69.49","email":"bwagner@demimbu.name"},
        {"id":150,"first_name":"Randy","last_name":"Garrett","country":"Brazil","ip_address":"69.198.228.155","email":"rgarrett@innotype.gov"},
        {"id":151,"first_name":"Linda","last_name":"Ryan","country":"Liberia","ip_address":"19.72.99.35","email":"lryan@leexo.biz"},
        {"id":152,"first_name":"Irene","last_name":"Ramos","country":"Chad","ip_address":"155.118.129.130","email":"iramos@reallinks.edu"},
        {"id":153,"first_name":"Joyce","last_name":"Greene","country":"Saint Helena","ip_address":"234.76.238.169","email":"jgreene@trilith.mil"},
        {"id":154,"first_name":"Kathleen","last_name":"Nelson","country":"Eritrea","ip_address":"218.201.240.22","email":"knelson@skinte.info"},
        {"id":155,"first_name":"Edward","last_name":"Ferguson","country":"United States Virgin Islands","ip_address":"217.51.206.60","email":"eferguson@oodoo.mil"},
        {"id":156,"first_name":"Nancy","last_name":"Fox","country":"Malaysia","ip_address":"243.54.193.181","email":"nfox@trunyx.net"},
        {"id":157,"first_name":"Bruce","last_name":"Gordon","country":"Netherlands","ip_address":"73.25.115.146","email":"bgordon@agimba.com"},
        {"id":158,"first_name":"Phillip","last_name":"Walker","country":"Hong Kong","ip_address":"107.121.28.206","email":"pwalker@linkbuzz.org"},
        {"id":159,"first_name":"Kevin","last_name":"Ward","country":"Micronesia","ip_address":"209.151.244.227","email":"kward@jabbersphere.net"},
        {"id":160,"first_name":"Wanda","last_name":"Bennett","country":"Ethiopia","ip_address":"211.185.197.223","email":"wbennett@omba.info"},
        {"id":161,"first_name":"Doris","last_name":"Mitchell","country":"Uzbekistan","ip_address":"229.83.147.174","email":"dmitchell@fivespan.info"},
        {"id":162,"first_name":"Aaron","last_name":"Lee","country":"\u00c5land","ip_address":"235.220.52.93","email":"alee@minyx.com"},
        {"id":163,"first_name":"Janet","last_name":"Gonzales","country":"Latvia","ip_address":"147.56.13.30","email":"jgonzales@gabtype.edu"},
        {"id":164,"first_name":"Maria","last_name":"Richards","country":"Burkina Faso","ip_address":"220.126.163.215","email":"mrichards@eabox.net"},
        {"id":165,"first_name":"Philip","last_name":"Romero","country":"Philippines","ip_address":"11.172.244.2","email":"promero@nlounge.edu"},
        {"id":166,"first_name":"Gregory","last_name":"Clark","country":"Sri Lanka","ip_address":"94.49.250.148","email":"gclark@babbleset.name"},
        {"id":167,"first_name":"Debra","last_name":"Gordon","country":"Bulgaria","ip_address":"143.130.19.133","email":"dgordon@vipe.biz"},
        {"id":168,"first_name":"Christine","last_name":"Clark","country":"Namibia","ip_address":"73.156.77.162","email":"cclark@plambee.gov"},
        {"id":169,"first_name":"Jeremy","last_name":"Brooks","country":"Northern Mariana Islands","ip_address":"128.204.236.41","email":"jbrooks@twitterworks.info"},
        {"id":170,"first_name":"Aaron","last_name":"Richards","country":"Libya","ip_address":"99.37.198.102","email":"arichards@vinder.biz"},
        {"id":171,"first_name":"Janice","last_name":"Wells","country":"Nicaragua","ip_address":"68.34.172.152","email":"jwells@mudo.net"},
        {"id":172,"first_name":"Kimberly","last_name":"Reynolds","country":"Guinea-Bissau","ip_address":"24.225.84.7","email":"kreynolds@jatri.org"},
        {"id":173,"first_name":"Christine","last_name":"West","country":"South Georgia and the South Sandwich Islands","ip_address":"174.169.202.68","email":"cwest@oozz.com"},
    ], (elem) -> new Backbone.Model(elem))
    			


	new Marionette.Carpenter.Controller(
		  app: MyApp		  
		  title: 'Custom Table'
		  region: MyApp.mainRegion
		  searchable: false
		  selectable: true
		  taggable: false
		  static: true
		  checkboxes: true
		  perPage: 20
		  columns: [
		  	{
		  		attribute: "first_name"
		  		label: "First Name"
		  	},
		  	{
		  		attribute: 'last_name'
		  		label: "Last Name"
		  	},
        {
          attribute: 'country'
          label: 'Country'
        },
        {
          attribute: 'ip_address'
          label: "IP Address"
        },
        {
          attribute: 'email'
          label: 'email'
        }
		  ]
		  collection: new Backbone.Collection(models)
    )