/*
Navicat MySQL Data Transfer

Source Server         : server
Source Database       : db_lyta

Target Server Type    : MYSQL
Target Server Version : 80015
File Encoding         : 65001

Date: 2019-04-16 16:16:21
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(32) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_name` (`admin_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of admin
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'root', 'root', '10001@qq.com');
INSERT INTO `admin` VALUES ('2', 'administrator', 'administrator', '10002@qq.com');
INSERT INTO `admin` VALUES ('3', 'lytaadmin1', 'admin', '10003@qq.com');
INSERT INTO `admin` VALUES ('4', 'lytaadmin2', 'admin', null);
INSERT INTO `admin` VALUES ('5', 'lytaadmin3', 'admin', null);

-- ----------------------------
-- Table structure for message
-- ----------------------------
DROP TABLE IF EXISTS `message`;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `username` varchar(32) NOT NULL,
  `title` varchar(32) NOT NULL,
  `content` varchar(10240) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `username` (`username`),
  CONSTRAINT `message_ibfk_2` FOREIGN KEY (`username`) REFERENCES `user` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of message
-- ----------------------------
INSERT INTO `message` VALUES ('2', '2', 'test', '景色真好看', '龙门石窟是中国石刻艺术宝库之一，现为世界文化遗产、全国重点文物保护单位、国家AAAAA级旅游景区，位于河南省洛阳市洛龙区伊河两岸的龙门山与香山上。龙门石窟与莫高窟、云冈石窟、麦积山石窟并称中国四大石窟。', null);
INSERT INTO `message` VALUES ('3', '3', 'lyta', '666啊', '位于洛阳市洛龙区伊河两岸的龙门山与香山上。龙门石窟与莫高窟、云冈石窟、麦积山石窟并称中国四大石窟。龙门石窟开凿于北魏孝文帝年间，之后历经东魏、西魏、北齐、隋、唐、五代、宋等朝代连续大规模营造达400余年之久，南北长达1公里，今存有窟龛2345个，造像10万余尊，碑刻题记2800余品。其中\"龙门二十品\"是书法魏碑精华，褚遂良所书的\"伊阙佛龛之碑\"则是初唐楷书艺术的典范。', '2019-04-02 19:07:36');
INSERT INTO `message` VALUES ('4', '2', 'test', '龙门石窟很有文化意义', '龙门石窟淡季门票90元，有三个主要景点，一、西山石窟、东山石窟，二、香山寺、三白园，景区很大，建议游览1天时间，最好自备水和零食，西山石窟规模最大，东山规模较小，香山寺内有蒋介石和宋美龄居住的别墅，值得一看，白园是唐代大诗人白居易的安息地，大多游客游至白园体力都会消耗极大，能上白园的人数较少，因售票处及停车场距离景区有3km，建议来去做景区内电瓶车，会节省体力。', '2019-03-06 03:08:09');
INSERT INTO `message` VALUES ('25', '1', 'admin', '很不错的·', '洛阳博物馆位于城市的中轴线上，北临风光旖旎的洛浦公园，南接初具规模的隋唐城遗址植物园。采用\"鼎立天下\"的设计理念，整体建筑外观为大鼎造型，整体建筑外观为大鼎造型，以非对称的空间结构为支撑，借鉴园林手法在方形流线的转折位置设置庭院和采光天井，使空间布局达成动态的均衡。洛阳博物馆展馆包括河洛文明展一个基本陈列和珍宝馆、汉唐陶俑馆、唐三彩馆、石刻馆、书画馆、王绣牡丹艺术馆、牡丹花都特产展七个专题陈列', '2019-04-05 11:08:55');
INSERT INTO `message` VALUES ('26', '1', 'admin', '666', '中华文化博大精深', '2019-04-05 19:59:30');
INSERT INTO `message` VALUES ('27', '1', 'admin', '厉害了', '牡丹文化节就是好', '2019-04-06 17:39:29');

-- ----------------------------
-- Table structure for scenic
-- ----------------------------
DROP TABLE IF EXISTS `scenic`;
CREATE TABLE `scenic` (
  `scenic_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `scenic_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `rank` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scenic_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `scenic_img_path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scenic_content` varchar(10240) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `open_time` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `scenic_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `creat_time` datetime DEFAULT NULL,
  PRIMARY KEY (`scenic_id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of scenic
-- ----------------------------
INSERT INTO `scenic` VALUES ('1', '博物馆', '普通', '洛阳博物馆', 'lybwg.jpg', '洛阳博物馆与中原明珠电视塔等城市地标性建筑遥相呼应，新馆建筑外形如大鼎屹立，寓意“定鼎洛邑”。\r\n博物馆由主楼和辅楼组成，主楼共两层，一楼是通展，二楼是博物馆的精品展。\r\n新馆共展出文物1.1万余件，除了本地出土的文物外，还接受了一批故宫博物院调拨的珍品。', '0', '09:00-17:00 (1月1日-12月31日 周二-周五)', '洛阳市洛龙区聂泰路与洛宜公路交叉口向南900米路西', null);
INSERT INTO `scenic` VALUES ('2', '博物馆', '普通', '洛阳古代艺术博物馆', 'lygdysbwg.jpg', '·洛阳古代艺术博物馆是我国最大的古墓专题性博物馆，也是世界上第一座古墓博物馆。\r\n·博物馆分为历代墓葬区、北魏帝王陵墓和壁画馆三大展区，藏有我国古代各个时期的数十座墓室，均由原址搬迁而来，并在地下展区按墓葬形制复原展出。\r\n·在这里可以近距离地接触、多视角地了解古墓的内部环境，包括墓室建筑、出土文物、墓室壁画、砖雕艺术和文物等。', '0', '09:00-17:00(夏季),09:00-16:30(冬季) (1月1日-12月31日 周二-周日)', '洛阳市邙山镇机场路45号', null);
INSERT INTO `scenic` VALUES ('3', '博物馆', '普通', '周天子驾六博物馆', 'tzjlbwg.jpg', '·2003年，在王城广场发现的大量周王朝时代的车马坑，是21世纪考古的重大发现。\r\n·为更好地保护这一历史性发现，洛阳在车马坑原址上建设了天子驾六博物馆。\r\n·这里车马坑规模大，车子类型多，摆放整齐，气势宏伟，是当今世界独一无二的“驾六”遗存。\r\n·馆内主要有天子驾六车马坑展厅和周王朝精品文物陈列两个展区，走廓内墙壁悬挂周王城考古发掘的精品文物资料。', '30', '08:00-22:00(夏季),08:00-18:30(冬季)；停止售票时间:21:30,18:30 (1月1日-12月31日 周一-周日)', '洛阳市西工区中州中路226号', null);
INSERT INTO `scenic` VALUES ('4', '博物馆', '普通', '洛阳民俗博物馆', 'lymsbwg.jpg', '洛阳民俗博物馆位于河南洛阳市新街南端，是一座以弘扬河洛文化、展示民俗风情为主的专题性博物馆。洛阳民俗博物馆原为潞泽会馆，系山西潞安府(今长治)、泽州府(今晋城)两地商人集资所建，主要用于同乡商人传递信息和物资集散，是晋商文化的产物。又因祀关羽又名关帝庙，为清乾隆九年(1744年)所建。现有舞楼、钟鼓楼、穿房、廊房、正殿、后殿、配殿等，是一组结构严谨、风格独特的古建筑群。1981年建为豫西博物馆，1987年改为洛阳民俗博物馆，次年对外开放。博物馆藏品共1897件。一级品4件，其中明代三世佛，夹贴金工艺，高3.5米，造型优美，工艺考究；清代木塔，金丝楠木，高6米，八面三级重檐。造像304尊，具有很高的艺术价值。刺绣厅主要陈列清末民初的云肩、霞披、罗裙、香袋、腰包、服饰、礼品等各类刺绣品；民间艺术厅陈列有木雕、竹雕、羽毛、镶嵌、皮影、面塑、剪纸、年画等，其中传统戏剧故事木雕数量达120件，皮影数量达213件；信俗厅为复原型陈列，展室中央的大型佛龛内，为三世佛珍品，前侧为金丝楠木塔，另有清代的供器等；婚俗厅为清末洛阳中等家庭婚俗场面复原陈列，分唢呐乐队、拜堂、洞房三部分，彩塑人物23个；寿俗厅有寿屏、贺帐、寿礼、寿俗家具等，其中寿屏为乾隆年间制作，高3.34米，宽7米。', '20', '9:00-12:00;13:30-17:00周一闭馆', '洛阳市老城区新街433号', null);
INSERT INTO `scenic` VALUES ('5', '博物馆', '普通', '洛阳周公庙博物馆', 'lyzgmbwg.jpg', '洛阳周公庙博物馆是在洛阳周公庙的基础上建立的一座弘扬周公文化，展示周公史迹的专题博物馆。始建于隋末唐初，是祭祀西周时期著名的政治家、思想家、军事家、古代洛邑的营建者、中国儒家思想的奠基人---周公姬旦的祠庙，亦称元圣庙。为全国三大周公庙之一，也是周公后裔150余姓寻根问祖祭祀朝拜的圣地。为全国重点文物保护单位。', '30', '周二至周日 08:30-17:00\r\n周一闭馆', '洛阳市老城区定鼎南路与凯旋东路交叉口东100米', null);
INSERT INTO `scenic` VALUES ('6', '博物馆', '普通', '洛阳博物馆老馆', 'lybwglg.jpg', '洛阳博物馆是洛阳唯一的一座综合性历史博物馆。展馆以史前时期、夏商时期、两周时期、汉魏时期和隋唐时期五大部分组成，展示文物珍品近千件。其中在展品方面重点突出了五万年前的大象化石、新石器时代的彩陶器、夏商周时期的青铜礼器、汉魏时期的彩绘陶器及百戏俑、隋唐时期的彩绘乐舞俑和釉色鲜艳、形态各异的唐三彩等。', '0', '周一至周日 全天', '洛阳市西工区中州中路298号', null);
INSERT INTO `scenic` VALUES ('7', '博物馆', '普通', '定鼎门遗址博物馆', 'ddmyzbwg.jpg', '定鼎门遗址博物馆外观为仿唐城门，由城门、城墙、城楼和阙楼组成。其中城台、城墙、阙台内部为遗址保护和展示区，考古发掘出土的定鼎门遗址门道、柱础石等将在这里得到原址保护展示；城楼、阙楼内部空间为陈列展览区，主要展示定鼎门遗址的演变历史和隋唐洛阳城在考古发掘中出土的部分文物。', '30', '周二-周日9:00-17:00，周一闭馆。', '洛阳市洛龙区龙门大道古城路口西行400米', null);
INSERT INTO `scenic` VALUES ('8', '博物馆', '普通', '偃师商城博物馆', 'ysscbwg.jpg', '商城博物馆位于河南省洛阳市东30公里的偃师市区，建筑为模拟夏商二里头一号宫殿，呈“四阿重屋”式仿古建筑群，是一座历史类专题性博物馆。偃师商城博物馆是在商代(公元16世纪)古城遗址上建造的，商城遗址是我国已发掘的城址中最早，最大和保存最好的古城址。', '0', '周一闭馆，周二-周日：8:00-11:30；14:30-18:00', '洛阳市偃师市商都东路52号(近新星路)', null);
INSERT INTO `scenic` VALUES ('9', '博物馆', '普通', '洛阳都城博物馆', 'lydcbwg.jpg', '都城博物馆当地人称周公庙，是纪念西周时期著名的政治家、军事家、思想家、古代洛阳的缔造者、中国儒家思想的奠基人周公姬旦的祠庙，亦称元圣庙。都城博物馆于1989年9月建馆，以周公庙为依托，展示了古代洛阳五大都城的历史风貌与城池变迁及周公生平事迹。南区为周公庙古建筑群，由定鼎堂、礼乐堂、后殿及两侧配祀厢房组成，另有元圣殿基址。北区和东区为古都城池建设史陈列及5座都城（夏、商、周、汉魏、隋唐）大型露天模型陈列区。西区为小型园林，小桥流水，名花美草。', '0', '周二至周日 08:30-17:00\r\n周一闭馆', '洛阳市西工区定鼎南路21号（洛阳晚报社对面）\r\n\r\n', null);
INSERT INTO `scenic` VALUES ('10', '历史景区', '4A', '白马寺', 'bms.jpg', '·这里是佛教传入我国后第一座由官府建造的寺院，历来被尊为中国佛教的“祖庭”和“释源”。·白马寺现存的遗址古迹为元、明、清时所留，其中大雄宝殿是全寺主殿，殿内有很多干漆造像。·据说寺中一处不起眼的角落有狄仁杰的墓葬，墓碑上刻有“大唐梁国公”，也有人说是指“薛怀义”而非狄仁杰。·山门不远处有一座齐云塔，风格独特，是中原地区为数不多的金代古建筑之一，目前有尼姑在此居住。', '35', '07:30-19:00+(1月1日-12月31日+周一-周日)', '洛阳市洛龙区洛白路6号', null);
INSERT INTO `scenic` VALUES ('11', '人文景区', '5A', '关林庙', 'glm.jpg', '·关林因葬有关公的首级而得名，始建于明万历年间，清乾隆时加以扩建，如今占地百亩。\r\n·这里是我国唯一的冢、庙、林三祀合一的古代经典建筑，建筑规格是按照宫殿形式修建的，布局严谨壮观。\r\n·古建筑群中最具特色的当属舞楼，另外，这里石碑林立，古柏参天，香火旺盛。\r\n·每年9月29日，这里都会举行关林国际朝圣大典，届时，海外关庙人士和宗亲组织纷纷来到关林，举行隆重的朝拜仪式。', '40', '09:00-17:00 (1月1日-12月31日 周二-周日)', '洛阳市洛龙区关林南街2号', null);
INSERT INTO `scenic` VALUES ('12', '人文景区', '普通', '丽景门', 'ljm.jpg', '·丽景门始建于隋代，长期以来是百官及万民祭祀神的地方，是洛阳古城的西大门。\r\n·“不到丽景门，枉来洛阳城”，这里是洛阳老街的所在地。\r\n·可以来此登楼观景，品味当地小吃，了解历史悠久的河洛文化。\r\n·每年辞旧迎新之际，这里都会举行“迎新年零点钟声”活动，可亲自登城敲响象征新年昌盛吉祥、平安幸福的108响。', '30', '08:00-21:00 (1月1日-12月31日 周一-周日)', '洛阳市老城区西大街233号', null);
INSERT INTO `scenic` VALUES ('13', '人文景区', '普通', '洛阳老街', 'lylj.jpg', '老街文化形成于金中京，是在隋唐东都的东城旧址上兴建的，距今已有三千多年的历史。\r\n洛阳老街保存着原始的面貌，往来的人群，吆喝叫卖的小贩和两旁林立的商铺，处处充满了古都的味道。\r\n在这里可以体验到老洛阳现在的繁华场面，可以吃到洛阳当地各色美味，其中最多的便是洛阳水席。', '0', '全天', '洛阳市老城区洛阳老街', null);
INSERT INTO `scenic` VALUES ('14', '人文景区', '普通', '唐朝明堂天堂遗址', 'ttmt.jpg', '明堂是武则天在洛阳主要宫殿乾元殿址附会古代明堂制度而建造的殿堂，建于公元688年。20世纪80年代经考古发掘。\r\n明堂高294尺，南北、东西各300尺，共三层：下层四面对应四时，即春夏秋冬；中层法十二时辰，上为圆盖，九龙捧之；上层法二十四节气，亦为圆盖，上施铁凤，高一丈，饰以黄金。明堂中间有巨木中桩，作为斗栱梁架依附的主干，上下通贯，号万象神宫。', '120', '周一至周日 08:30-21:30\r\nTips:全年开放，遇到法定假期也会延长或缩短开放时间。', '洛阳市老城区定鼎北路', null);
INSERT INTO `scenic` VALUES ('15', '人文景区', '普通', '洛阳山陕会馆', 'lysshg.jpg', '山陕会馆位于洛阳老城南关马市街九都路南侧。亦名西会馆。是清代时山西、陕西两省来洛商人聚居的地方。建于清初康熙、雍正年间，后屡经修葺。道光十五年(1835)重修。现存琉璃照壁，高12米，宽13.2米，正中用彩釉琉璃方砖砌成二龙戏珠图案及人物、花鸟等。山门面阔3间，进深1间，为歇山式。舞楼面阔、进深各3间，歇山式。正殿为中心建筑，面阔5间，进深3间，歇山式。殿前有石狮1对。院内另有石狮1对，高3.8米。拜殿为两层楼悬山式顶。另存碑碣数方。', '15', '全天', '洛阳市老城区瀍河区九都东路171号', null);
INSERT INTO `scenic` VALUES ('16', '人文景区', '普通', '文峰塔', 'wft.jpg', '文峰塔是洛阳地区现存为数不多的古塔之一，为市级文物保护单位。旧时人们登临塔顶，除有“危楼高百尺，上可摘星辰，不敢高声语，恐惊天上人”之慨叹外，更多的是纵目河洛大地的壮丽景色。为保护古塔，今塔门已封。', '0', '周一至周日 全天', '洛阳市老城区柳林街附近', null);
INSERT INTO `scenic` VALUES ('17', '人文景区', '5A', '龙门石窟', 'lmsk.jpg', '中国四大石窟之一，历史悠久，开凿经历了多个朝代，断续营造达500余年之久，共有97000余尊佛像。\r\n以伊河为界，石窟分为西山和东山两部分，东山石窟多是唐代作品，而西山石窟开凿于北朝和隋唐时期。\r\n龙门石窟是洛阳最经典的景点，其中西山石窟是龙门最精华的部分，包括奉先寺的卢舍那佛像和古阳洞中的“龙门二十品”。\r\n每年4月1日至5月10日会举办洛阳牡丹花会。', '90', '08:00-17:00；停止售票时间:16:00 (11月1日-次年1月31日 周一-周日)', '洛阳市洛龙区238省道', null);
INSERT INTO `scenic` VALUES ('18', '人文景区', '5A', '栾川老君山', 'lcljs.jpg', '·相传东周道家始祖老子曾在此山隐居修炼，故名老君山。\r\n·是伏牛山主峰，海拔两千多米，自北魏时期起陆续建立了官殿等庙宇群落，唐、宋、明、清等朝代把这里视为道教圣地。\r\n·千百年来这里一直是豫、陕、皖、鄂等地众香客朝拜的中原道教圣地。 \r\n·景区内除有当地特产售卖以外，还有老子骑牛像和太上老君金像等当地著名标志物。是中原地区集山水景观与道教文化为一体的景区。', '120', '08:30-17:00 (1月1日-12月31日 周一-周日)', '河南省洛阳市栾川县七里坪村21组（县城城东3公里处）\r\n\r\n', null);
INSERT INTO `scenic` VALUES ('19', '自然景区', '5A', '龙潭大峡谷', 'ltdxg.jpg', '龙潭大峡谷属于国家5A级景区，是一条以典型的红岩嶂谷群地质地貌景观为主的峡谷景区。\r\n这里经过十二亿年的地质沉积和260万年的水流切割旋蚀所形成的高峡瓮谷，堪称世界一绝。\r\n景区内有六大自然谜团、七大幽潭瀑布和八大自然奇观，不能错过。\r\n峡谷内还有不少户外项目，如高空滑索、攀岩、橡皮艇等，值得体验。', '70', '07:00-17:00 (1月1日-12月31日 周一-周日)', '洛阳市新安县洛阳市新安县北部\r\n\r\n洛阳市新安县洛阳市新安县北部\r\n\r\n', null);
INSERT INTO `scenic` VALUES ('20', '自然景区', '5A', '鸡冠洞风景名胜区', 'jgd.jpg', '鸡冠洞是一座天然石灰岩溶洞，形如雄鸡昂首引颈高啼，山顶恰似鸡冠，景致秀美。鸡冠洞斜入地下长达1000 多米，景色瑰丽，被誉为“北国第一洞”。洞内由 “玉柱潭”、“溢彩殿”、“叠帏宫”、“洞天河”、“瑶池宫”、“藏秀阁”、“逍遥宫”、“石林坊”八大景区连缀而成。洞中布满石柱、石塔、石瀑、石川、石花等，琼林玉树，千姿百态。整个溶洞就像是晶莹剔透的海底龙宫，畅游其间，犹如置身于美丽优雅的童话世界。', '90', '夏季 08:00-18:00\r\n冬季 08:00-17:00', '洛阳市栾川乡小双堂沟村鸡冠洞风景名胜区(栾川县城西3公里处)', null);
INSERT INTO `scenic` VALUES ('21', '自然景区', '4A', '中国薰衣草庄园', 'yyczy.jpg', '洛阳·中国薰衣草庄园位于伊河的东岸，南邻龙门石窟，东以二广高速为界，高铁大道及希望大道两条跨河大道自西向东穿过庄园。庄园总面积有6000多亩，是集旅游观光、特色农业、度假养生、五星级酒店等功能为一体的大型创意观光农业园。', '50', '9:00-18:00', '河南省洛阳市伊滨区河堤大道向南100米', null);
INSERT INTO `scenic` VALUES ('22', '公园', '普通', '王城公园', 'wcgy.jpg', '王城公园始建于1955年，因修建在东周王城遗址上而得名，是洛阳市最大的综合性公园。\r\n公园由古文化区、牡丹花圃、动物馆、游乐场等几个部分组成，既有深厚的传统意境，又不乏浓郁的现代气息。\r\n每年的牡丹花会期间，王城公园都是古城的最佳赏花处。\r\n这里平时是免费的，只有牡丹文化节期间，才会收售门票。', '0', '07:30-22:30 (1月1日-12月31日 周一-周日)', '洛阳市涧西区中州中路312号', null);
INSERT INTO `scenic` VALUES ('23', '公园', '普通', '隋唐城遗址植物园', 'stzwy.jpg', '--隋唐城遗址植物园始建于2005年12月，是游客和市民观光赏花、休闲娱乐的重要场所。\r\n--植物园有17个专类园区，其中千姿牡丹园占地327亩，由百花园、九色园、特色园和科技示范园组成，共种植九大色系牡丹1200多个品种。\r\n--另外有20 多个休闲娱乐广场，形式各异、造型独特，与之相辉映的30 多组亭台、廊架，体现了隋唐时期建筑风格。', '牡丹文化节30元、非法定节假日的周一至周五10元/人。', '全天 (1月1日-12月31日 周一-周日)', '洛阳市洛龙区王城大道隋唐城遗址植物园', null);
INSERT INTO `scenic` VALUES ('24', '公园', '普通', '洛浦公园', 'lpgy.jpg', '现在北岸景区长约10公里，宽为90米，北岸景区是整个游园的重点，以大面积草坪为主，建设有30个活动内广场、14个历史文化广场、10个植物专类园及其他建筑小品等。', '0', '全天 (1月1日-12月31日 周一-周日)', '洛阳市涧西区环卫南路', null);
INSERT INTO `scenic` VALUES ('25', '公园', '平台', '洛阳上清宫森林公园', 'sqg.jpg', '上清宫，道教名观，位于河南洛阳城北邙山翠云峰。相传为太上老君炼丹之处，始建于唐玄宗开元年间，为一座青砖庙院，紧凑幽静。 位于洛阳市老城西北隅4公里。坐落在邙山翠云峰上，为洛阳北郊的制高点。山虽不高但地势险峻，山上树木郁郁葱葱，苍翠若云，故称“翠云峰”。这里风景秀丽，是消夏胜地。唐乾封元年(666年)追尊老子(李耳)为玄无皇帝，开元二十九年(741年)诏令两京诸州置庙祭祀，因而上清宫又叫玄元皇帝庙，后人又追尊老子为太上老君，所以也称老君庙。诗人杜甫于公元749年登上玄元皇帝庙，一览洛阳的山河形势，写出“山河扶绣户，日月近雕梁”的名句，吴道子在此绘了《五圣千官像》，宋代的苏东坡也曾于此刻石题句。上清宫，金元已废，以后多次重修，民国时亦曾整修。抗日战争期间惨遭日军炸弹破坏，仅翠云洞和洞上平台、三间五脊歇山顶老君殿幸存。在上清宫南边和邙山岭下，有玉清、下清二宫。下清宫规模较小，但十分紧凑幽静。附近尚有道士墓塔5座。', '0', '全天 (1月1日-12月31日 周一-周日)', '洛阳市老城区北邙山翠云峰', null);
INSERT INTO `scenic` VALUES ('26', '人文景区', '普通', '洛邑古城', 'lygc.jpg', '洛邑古城景区位于河南省洛阳市老城区，被誉为\"中原渡口\"。，以园区内文峰塔、文庙、妥灵宫、四眼井号等保护遗址为节点、以新潭、护城河水系为纽带，使古典与现代有机结合，让老建筑与新建筑不被割裂作为整体目标，既体现洛邑古城传统文化底蕴又不失现代气息，园区内科学划分各功能区域，将千年古城的风采集中展现。在园区内，餐饮、旅游、住宿、商服等功能区点缀其中，整个园区一步一景，人文气息浓厚，发展和继承洛邑古城原有的文化景观和人文气息，使其成为洛阳古城区文物保护、复兴和继承洛阳传统文化的亮点。洛邑古城以深厚的文化底蕴为依托，让世界看到中国文化之美。', '0（需带身份证）', '全天 (1月1日-12月31日 周一-周日)', '洛阳市老城区九都东路与柳林街交叉口北侧', null);
INSERT INTO `scenic` VALUES ('27', '自然景区', '5A', '白云山旅游度假区', 'bys.jpg', '洛阳白云山位于河南省洛阳市嵩县西南部伏牛山腹地，总面积45平方公里，是世界地质公园、国家AAAAA级旅游景区、全国最具影响力的森林公园、全国科普教育基地、中国十佳休闲胜地。地跨长江、黄河、淮河三大流域，处于北亚热带向暖温带的气候过渡带，盛夏最高气温不超过26℃，有脊椎动物204种，维管束植物1991种，昆虫3000余种，是天然的生物资源基因库，被专家誉为“自然博物馆” 。白云山目前已开发有九龙瀑布、玉皇顶、白云峰、原始森林、小黄山五大观光区和白云湖、森林氧吧、高山牡丹园、留候祠、芦花谷等五大休闲区。中央政治局常委李长春视察白云山题词“中原名山”；著名书法家启功先生题笔“人间仙境白云山”；原新华社社长穆青先生泼墨“白云天下秀”。被誉为“中国夏都，养生天堂”。” 。\r\n\r\n洛阳白云山位于河南省洛阳市嵩县西南部伏牛山腹地，总面积45平方公里，是世界地质公园、国家AAAAA级旅游景区、全国最具影响力的森林公园、全国科普教育基地、中国十佳休闲胜地。地跨长江、黄河、淮河三大流域，处于北亚热带向暖温带的气候过渡带，盛夏最高气温不超过26℃，有脊椎动物204种，维管束植物1991种，昆虫3000余种，是天然的生物资源基因库，被专家誉为“自然博物馆” 。白云山目前已开发有九龙瀑布、玉皇顶、白云峰、原始森林、小黄山五大观光区和白云湖、森林氧吧、高山牡丹园、留候祠、芦花谷等五大休闲区。中央政治局常委李长春视察白云山题词“中原名山”；著名书法家启功先生题笔“人间仙境白云山”；原新华社社长穆青先生泼墨“白云天下秀”。被誉为“中国夏都，养生天堂”。” 。\r\n\r\n', '80元/人 门票网上预订：75元/人 ，有学生票', '01月01日  至  12月31日    07:00  至  19:00', '洛阳白云山国家森林公园管理局办公楼三楼', null);
INSERT INTO `scenic` VALUES ('28', '人文景区', '普通', '中国国花园', 'zgghy.jpg', '公园位于隋唐古城遗址之上，以隋唐历史文化为底蕴，以牡丹文化为主要内容，融历史文化、牡丹文化和园林景观为一体，充分展示了洛阳牡丹文化的地域特色。规划设计占地1548亩，作为我国目前最大的牡丹专类观赏园和洛阳市最佳牡丹观赏园，中国国花园以其单个牡丹种植面积大、品种全、色泽纯正艳丽、单株花朵最大、珍稀品种多和如画的风景而蜚声中外。现园内种植牡丹1080多个品种750多亩60余万株，配植各种乔、灌木180多个品种380多万株，草坪180000平方米。尤其在黑、绿、黄等珍稀牡丹品种方面独领风骚，引无数中外游客慕名前来观赏，成为展示洛阳牡丹和牡丹文化的主要窗口，并成为我市接待中外重要客人的主要场所。园内新增景点蝴蝶科普展馆和占地2000平米的蝴蝶鸟语林以及金石文字博物馆丰富了园内的观赏内容，展现了洛阳浓厚的文化底蕴！', '牡丹文化节期间按洛阳市发改委核定票价售票，周一至周五10元/人次，周六、周日30元/人次，其它时间对游客免费开放。花会期间可用旅游年票。', '01月01日  至  12月31日    07:00  至  19:00', '洛阳市洛龙区龙门大道4号', null);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL,
  `real_name` varchar(32) DEFAULT NULL,
  `birthday` datetime DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'admin', '666666', '1980-01-01 00:00:00', '13800000000', '洛阳市伊滨区');
INSERT INTO `user` VALUES ('2', 'test', 'test', null, null, '18411112222', null);
INSERT INTO `user` VALUES ('3', 'lyta', 'lyta', null, null, '15237886666', null);
INSERT INTO `user` VALUES ('15', 'user1', 'user1', null, null, null, null);
