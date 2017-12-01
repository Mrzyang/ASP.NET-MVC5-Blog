/*
Navicat SQL Server Data Transfer

Source Server         : 阿里云sql server
Source Server Version : 105000
Source Host           : bds24646460.my3w.com:1433
Source Database       : bds24646460_db
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 105000
File Encoding         : 65001

Date: 2017-12-01 16:05:20
*/


-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE [dbo].[admin]
GO
CREATE TABLE [dbo].[admin] (
[id] int NOT NULL IDENTITY(1,1) ,
[username] nvarchar(50) NOT NULL ,
[password] nvarchar(50) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[admin]', RESEED, 19)
GO

-- ----------------------------
-- Records of admin
-- ----------------------------
SET IDENTITY_INSERT [dbo].[admin] ON
GO
INSERT INTO [dbo].[admin] ([id], [username], [password]) VALUES (N'1', N'admin', N'admin')
GO
GO
INSERT INTO [dbo].[admin] ([id], [username], [password]) VALUES (N'16', N'123456', N'123456')
GO
GO
INSERT INTO [dbo].[admin] ([id], [username], [password]) VALUES (N'19', N'张洋', N'zy19961114')
GO
GO
SET IDENTITY_INSERT [dbo].[admin] OFF
GO

-- ----------------------------
-- Table structure for article
-- ----------------------------
DROP TABLE [dbo].[article]
GO
CREATE TABLE [dbo].[article] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] nvarchar(60) NOT NULL ,
[desc] nvarchar(255) NULL ,
[content] text NOT NULL ,
[cateid] int NOT NULL ,
[time] datetime NOT NULL ,
[creator] int NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[article]', RESEED, 30)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'desc')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'desc'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'描述'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'desc'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'cateid')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'所属分类id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'cateid'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'所属分类id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'cateid'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'article', 
'COLUMN', N'creator')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'文章作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'creator'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'文章作者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'article'
, @level2type = 'COLUMN', @level2name = N'creator'
GO

-- ----------------------------
-- Records of article
-- ----------------------------
SET IDENTITY_INSERT [dbo].[article] ON
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'4', N'未来不长，别再说来日方长', N'就是目睹一场流年花开。正是这场流年，足以让我看清一场。情深缘浅，不问曲终人散。  时光里的笛音。总是一遍又一遍的续目在。', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: 仿宋; font-size: 19px;">找到工作的那一天，我对半辈子生活在大西北戈壁滩的父母说，我在南方找到了的工作，那里风景秀丽，依山傍水，等我在那里稳定了，就接你们去看看南国的风光。就这样，一年又一年，父母依然在北国那片荒凉的土地上，从未踏足我曾描述的这片美丽富饶的热土。</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: 仿宋; font-size: 19px;">我们总习惯推迟一些事情，说时机不成熟，条件不允许。可却忘了，岁月难饶、光阴不逮，可能永远都不会有最合适的那一天。</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: 仿宋; font-size: 19px;">上次因为姥姥突然离世，父母从新疆赶回河南老家，我也请假回去。丧事过后，一次偶然的交谈中，看到母亲布满血丝却略带期待眼神问我，什么时候能带她和父亲去看看南方的秀丽山水，不知道她什么时候会像姥姥一样猝然离世。一瞬间，我满怀热泪、深深愧疚的低下了头。我最初的一句承诺，成了父母眼中最美好的期待，而我却总感觉未来还有很长，能陪伴他们很久，能带他们去更多、更好的地方。当我再次抬头，才注意到母亲双鬓白发日趋增多，皱纹慢慢加深，原来，他们已经老了，没有那么多来日方长了。</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 37px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: 仿宋; font-size: 19px;">毕淑敏在孝心无价中写道：有一些事情，当我们年轻的时候，无法懂得，当我们懂得的时候，已不再年轻，世上有些东西可以弥补，有些东西永无弥补。当我们把父母的孝心等到来日方长、金钱时间都允许的那一天，就可能会有树欲静而风不止，子欲养而亲不待的悲剧。</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: justify;"><span style="font-family: 仿宋; font-size: 19px;">&nbsp; &nbsp;无论是做事，还是行孝，我要都要从现在开始。勇敢迈开坚实的脚步，别去考虑失败后别人的嘲笑和蔑视；别担心你的孝心，在父母看来不够昂贵，在孝的天枰上，一切等值。抓住现有的光阴吧，去追逐年轻人的梦想，去表达那微不足道的孝心！</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 仿宋; font-size: 19px;">&nbsp;&nbsp;&nbsp;&nbsp;别想来日方长，世上最愚不可及的事，莫过于胸有大志，却又虚掷时光，最后悔的事莫过于待我功成名就，衣锦还乡想去从容尽孝，老人已行将就木。一生其实不长，有时还没等你活透彻，青春难觅，垂暮已至，唯留一声嗟叹。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><br/></p><p></p><p><br/></p>', N'1', N'2017-12-01 11:59:52.377', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'5', N'云来云散，回忆中有你牵绊', N'窗台的夜光下，独饮那一杯窗台月下离别送曲。独看回眸处，那一世桑海桑田。月下的浅曲浓重的笛音。', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">浮沉的云海留给天空一抺阴凉，把人间的八月点印出思念中的印斑，放入大脑。关于这个城市人影画像出现在脑海，印在上岗。让思念渲染绿叶，趁着花瓣还没有开放，慢慢生长。慢慢的等你走进万花丛中，闻着花香，飘进你心中的味道不是花香，而是我思念时的向往。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">在雨中， 我试着把你描绘。描绘出你的双眸和你最忧伤的目光。闪动着，张望远方。远方，有你的故乡。哪里有你的童年，有你的成长，有你的欢乐，也有你的忧伤。我把你的守望画在一张普通的白纸张上，白纸却因为有你的图像不在寻常。当你回到你的故乡，我就成了故乡里的游客。徘徊在青苔路中的石板上---</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">晚霞，挂起一缕红光照在山上，用笔和纸描绘出你的模样，为何点缀不出你微笑时的酒窝。远方的你和留不下地青春，伴随着夕阳模糊在黑暗里。我们习惯用回忆祭奠青春；用放荡祭奠疯狂；用窘迫祭奠梦想。当回忆闪过，眼前的时光，剩下的不在是回忆，而是回忆后的忧伤，搁浅的没有沙滩的海面上。伴随着风，伴随着雨，伴随着你和我，飘去没有坐标的方向。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">都说大海有着宽广的胸膛，能容纳百川，吸纳江河。可是百川的水甘甜，清淡。大海的水干涩苦咸。可谁知道，那苦咸的味道乃是游鱼离开百川的眼泪，在诉说着自己的苦。守在那段河流，留个爱人和朋友。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">呼吸着相同的空气两个人，有着遥不可及的距离。距离并没有改变你我，而是你我改变了生活，跟随着不同的人，聆听着不同的事，在城市的角落。恬静的思念，安静的生活，相同的是你和我都守着一份安宁的生活，流失着相同的美好。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">十字路的霓虹灯，还是三种颜色。没有过多的停留，也没有过早的挥手。最美好的生活要的就是这份坚守。正如最美好的我们，不可能一直在回忆里等候。要知道，我们无法找回失去的青春，更不能把青春放在回忆中泅渡。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">时光从没停留，脆弱的美好，怎能搭建起牢固的城堡。让过去消失在风里，停留在心里。然后伸开双手，来展现属于这个时代的自我。不躲藏，不掩饰，不虚慌。用悲泣的泪水和流过的汗水，收获属于自己的果实。只要心开放，回忆就不会出现悲伤，只要心敞亮，干枯的沙漠花儿一样绽放。对于没有想起的窘迫，就让它留在回忆里就好。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">曾经观望星星的情人坡，已经变成了城市中的地标。属于我们的操场也变成了休闲的广场。哪里的喷泉是我们常常躺着的地方。现在，情人坡上的情人大大方方。站在哪里看星星的人以不在青春。她们手牵着手，毫不避讳的拉着爱人的手共度夕阳下的美好。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">站在没有护栏的青石桥上，关于我们的回忆淡淡的流失在夜幕中，伴随着风，去了远方。那依稀残留的记忆如今都被我画在这张流白空荡的白纸上。描绘的容颜没有改变，只是那空荡的流白需要我去补上。为什么，这是时候，我忘记了从哪里开始，如同我忘记了从哪里结束一样。既然回忆伴着风，去了远方。画中的你，是用来加深记忆的吗？</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; 浅淡的回忆容易淡忘，或许，活在我心中的不是回忆，而是你离别时的忧伤。站在青石桥上浅唱，歌声穿过城市的城墙，城墙隔开了我们的距离，却没有隔断我们的呼吸。我把思念孕育花瓣，流入你的身体。同时我也把你的画像挂在我的墙面。在睡前向往，把你带入我的梦里。相比城市的割据，我们之间并没有太远的距离。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">幸福，就应该来的无声无息，走的也应该无声无息。回忆，挂起一副你的画卷，在没有雨的夜晚。安静的同月光一起入睡。<br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">QQ：2889244919</p><p><br/></p>', N'10', N'2017-11-18 18:06:34.223', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'6', N'深度优先搜索算法', N'伴奏着与那来去的搁浅。流年的浅唱再见的分别，早已与那花开的痕迹。遗忘千年。回首，', N'<p>&nbsp; 
 &nbsp; &nbsp;</p><pre class="brush:cpp;toolbar:false">//深度优先搜索算法在搜素过程中对节点进行涂色来指明节点的状态。&nbsp;&nbsp;
//每个节点的初始颜色都是白色的，在节点被发现后变成灰色的，在其邻接链表被扫描完成后变为黑色的。&nbsp;&nbsp;
//该方法保证每个节点仅在一颗深度优先树中出现，因此，所有的深度优先树都是不相交的。&nbsp;&nbsp;&nbsp;
//深度优先搜素的另一个性质：节点的发现时间和完成时间具有所谓的括号化的结构&nbsp;&nbsp;&nbsp;
#include&nbsp;&lt;iostream&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;queue&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;stack&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;vector&gt;&nbsp;&nbsp;
&nbsp;#include&nbsp;&lt;climits&gt;&nbsp;&nbsp;&nbsp;
&nbsp;using&nbsp;namespace&nbsp;std;&nbsp;&nbsp;
&nbsp;//这里dfs在每个节点上盖了一个时间戳，每个节点v有两个时间戳：&nbsp;&nbsp;
&nbsp;//第一个时间戳v.d记录节点v第一次被发现的时间（图上灰色的时候），第二个时间戳v.f记录的是搜索完成对v的邻接链表的扫描时间（图上黑色的时候）&nbsp;&nbsp;&nbsp;
&nbsp;struct&nbsp;ListNode{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;val;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;color;//white=0,gray=1,black=2;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;d;//发现节点的时刻&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;f;//完成对节点处理的时刻&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;vector&lt;ListNode*&gt;&nbsp;next;//存储所有的邻接节点&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;pre;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ListNode(int&nbsp;x):color(0),val(x),d(0),f(0),pre(NULL){&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;};&nbsp;&nbsp;&nbsp;
void&nbsp;insert(ListNode*&nbsp;L,ListNode*&nbsp;n)&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;L-&gt;next.push_back(n);&nbsp;&nbsp;
}&nbsp;&nbsp;
void&nbsp;show(ListNode*&nbsp;L)//显示该节点的所有邻接节点&nbsp;&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;n=L-&gt;next.size();&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;n;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;cout&lt;&lt;(L-&gt;next)[i]-&gt;val&lt;&lt;&quot;&nbsp;&quot;;&nbsp;&nbsp;
}&nbsp;&nbsp;
int&nbsp;time=0;//变量time是一个全局变量，用来计算时间戳&nbsp;&nbsp;
void&nbsp;dfs_visit(ListNode*&nbsp;a[],int&nbsp;n,ListNode*&nbsp;u)&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;time++;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;d=time;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;color=1;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;int&nbsp;n1=u-&gt;next.size();&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;n1;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;v=(u-&gt;next)[i];&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(v-&gt;color==0)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;v-&gt;pre=u;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dfs_visit(a,n,v);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;color=2;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;time++;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;u-&gt;f=time;&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
}&nbsp;&nbsp;
void&nbsp;dfs(ListNode*&nbsp;a[],int&nbsp;n)&nbsp;&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;n;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;u=a[i];&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(u-&gt;color==0)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dfs_visit(a,n,u);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
}&nbsp;&nbsp;
&nbsp;&nbsp;
&nbsp;&nbsp;
int&nbsp;main()&nbsp;&nbsp;
{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;ListNode*&nbsp;a[6];&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;int&nbsp;b[6][6]={{2,4},{5},{5,6},{2},{4},{6}};&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;6;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;a[i]=new&nbsp;ListNode(i+1);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;for(int&nbsp;j=0;j&lt;6;j++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;{&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;6;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;if(b[j][i])&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;a[j]-&gt;next.push_back(a[b[j][i]-1]);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;//show(a[j]);cout&lt;&lt;endl;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;}&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;//以上是构建一个有向图&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;dfs(a,6);&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;for(int&nbsp;i=0;i&lt;6;i++)&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;cout&lt;&lt;a[i]-&gt;val&lt;&lt;&quot;：&nbsp;&quot;&lt;&lt;a[i]-&gt;d&lt;&lt;&quot;&nbsp;&quot;&lt;&lt;a[i]-&gt;f&lt;&lt;endl;&nbsp;&nbsp;
}&nbsp;&nbsp;
//dfs的运行时间O(V+E)，即图的边数和点数之和</pre><p><br/></p>', N'11', N'2017-11-18 17:48:08.267', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'7', N'不远万里，因为有你', N'回望。回心，时那段缘浅，早已磨练的疲惫与世轮回。岁月的脚步下，早已沾满了整个来回的落春。', N'<p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">晃晃荡荡，跌跌撞撞，元旦，坐在驶向JN的高铁，我又坠入梦中。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">其实，做梦是人生最美的事，从前失去的东西，回不去的地方，再也见不到的人，醒着得不到的一切，都会在梦里反复出现。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><strong style="margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">梦不是虚空一场，梦是时间对人生的补偿。</span></strong><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">只是我生来梦轻，稍有声响便会苏醒。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><blockquote style="margin: 0px; padding: 0px 0px 0px 10px; list-style: none; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; border-left-width: 3px; border-left-style: solid; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">想着，新年的人生规划——</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">琢磨明白娃娃机，最起码能抓到一个够本；</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">学好半吊子的英语，捡起来想去考雅思；</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">去重庆，烫一锅火锅</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">哎呦，我也想去长沙，吃一份地道的剁椒鱼头</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">还有，多年未见的朋友</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">攒好的牛皮是不是不吹就会瘪了</span></p></blockquote><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">可惜身上带着什么都想要的贪和不愿努力的懒，梦中睡在床上，雄心万丈，醒来又是重复迷糊的一天。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">以为，一辈子的终点是大学毕业。即便再聚，隔着山南海北，至少是三、五、十年。从未奢望，刚满一年，我们又能围在一桌拼酒，扯犊子。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">想笑的是，酒店旁是人民医院。突然又想到哪个过不去的梗，千年不怂耗子喝着喝着喝进了医院。今天他是不是故意订在这个地方？</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">奇怪的是，我们都没有喝多，人尽兴了，酒点到为止。尤甚记得一句“来年，我们这些人只多不少”。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">是哦，只多不少。茫茫人海，有趣的灵魂不多，合群的又不多，我们，要结识，珍惜的这些趣的人是多少亿万分子化合反应聚在一起的辰光？</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">有人定性长大的概念，如果你阅尽世间繁华，变得越来越冷漠，你以为你长大了，但其实没有，长大应该是变温柔，对全世界都温柔；是对很多事情都能放下，都能慈悲。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><blockquote style="margin: 0px; padding: 0px 0px 0px 10px; list-style: none; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; border-left-width: 3px; border-left-style: solid; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">你不会在亏待每一份热情，不再讨好任何的冷漠；</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">你懂得，你如果一直不成长，有些人是等不了你的；</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">所以，2017 我们要做有趣的事，要和有趣的人在一起。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">和世界交手的这许多年，你是否光彩依旧，兴致盎然？</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">生命好在无意义，才容得下各自赋予意义；</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">风吹雨打的曾经，才对得起炎热的盛夏</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; max-width: 100%; clear: both; min-height: 1em; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">萍踪炽热的重逢，才能收获深冬种下的初雪；</span></p></blockquote><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">如果，生活满身沧桑，你记得说一声——</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">老板，麻烦你给我沉淀的生活加一点阳光，不要香菜，谢谢</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-family: 黑体; font-size: 15px; box-sizing: border-box !important; word-wrap: break-word !important;">生命中除了爱，其他都是行李，2017，有趣的风帆起航了。</span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: 黑体; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">ps:</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: 黑体; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">征集故事</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: 黑体; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">如果你有纪念的故事，难忘的人</span></span></p><p style="margin-top: 0px; margin-bottom: 0px; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); max-width: 100%; clear: both; min-height: 1em; line-height: 25.6px; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="font-family: 黑体; margin: 0px; padding: 0px; max-width: 100%; box-sizing: border-box !important; word-wrap: break-word !important;"><span style="margin: 0px; padding: 0px; max-width: 100%; font-size: 15px; line-height: 24px; box-sizing: border-box !important; word-wrap: break-word !important;">告诉我，我为你执笔</span></span></p><p><br/></p>', N'12', N'2017-11-18 18:07:59.330', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'8', N'感恩，今生与我相遇的流年', N'时间的缝隙里总是填满了，一切的风吹雨打。和一切的花落花开，  整个流年，是我不曾走出的痛。因为它太过沉淀，所以不曾轻言去触碰到它。', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">生命如诗，时而温婉，时而豪放；生命如歌，时而低沉，时而激昂。人生如流年，春夏秋冬，变幻无常，却自有一番风情。不同的境遇成就生命的多彩，这一生，虔诚行走，心怀感恩。走过山重水复，得遇柳暗花明。回首向来处，却道也平常。</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(34, 177, 76);">春</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">辞去了冬的寒冷</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">迎来了春的温润</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">如诗的季节，百花争艳</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">举一杯香茗，邀清风明月</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(34, 177, 76);">捧一卷青书，会才子佳人</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">感谢与你相遇，似水的流年，温文尔雅。当脸庞吹过和煦的春风，当耳边响起婉转的虫鸣。细雨湿衣的季节里，生命正孕育着成长的力量。听，潺潺的流水解除了封印，恣意流淌，这银铃般的声音，恰似傍晚的巷道，余晖之下，一个个健康快乐的身影，嬉戏打闹，洋溢着青春的味道。如诗，如歌......</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(22, 11, 255);">夏</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">当烈日占领长空</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">当暴雨冲走满地灰尘</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">你，如约而至</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">矫健的身影，激昂的旋律</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(22, 11, 255);">爆发出生命的热情</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">感谢与你相遇，如火的生命，满怀激情。生活总是充满考验，暴风雨的洗礼让生命得到了蜕变。烈日当空，挥汗如雨，让生命在成长的道路上完美升华。看，那满池的碧波，接天莲叶，映日荷花，诉说着生命的纯粹与热情。半江瑟瑟半江红的美景不禁让我呐喊：生如夏花！</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(237, 28, 36);">秋</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">天高云淡</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">风清月明</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">这大地，着一身红装</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">恰如生命的港湾</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">闲适，温暖</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">又如待嫁的新娘</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(237, 28, 36);">羞涩，眷恋</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">感谢与你相遇，如风般清爽，如茗般淡雅。秋风起，落叶缤纷。如游子，如异客，半生浮萍，终尘埃落定，回归故里。没有春的温润，没有夏的激情，却多了一份眷恋，增了一丝乡情。这也许就是秋的美好，不经意间，品出生命的真谛，四季轮回，生命如梭，放慢了脚步，却坚定了理想。宠辱不惊，淡定坦然，应是生命最美的状态......</span><br/>&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;">&nbsp;</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;;"><span style="font-size: 20px; color: rgb(255, 126, 0);">冬</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">清脆的鸡鸣</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">打破世界的沉静</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">沉睡后的双眼</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">朦胧，惺忪</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">不情愿地爬出被窝</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">裹着厚厚的棉衣</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">掀起窗帘</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">刹那间，如坠仙庭</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">这满地的圣洁</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); text-align: center; line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px; color: rgb(255, 126, 0);">是上帝给生命的馈赠</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">感谢与你相遇，素雅如冬，洁净如雪。寒风渐起，彻骨的冰冷无情地笼罩着大地，却阻挡不了生命的赤诚。漫天的精灵翩翩起舞，如蝉翼般剔透，似美玉般晶莹，降落人间的一瞬，告诉我们何为纯贞。千里冰封，万物归静，唯见一枝梅花迎风绽放，点点红妆，宣示着生命的执着、坚强与无限可能。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">感谢流年，感恩所有的一切！</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); white-space: normal; background-color: rgb(255, 255, 255); line-height: 32px; font-family: &quot;微软雅黑 Arial sans-serif&quot;; font-size: medium;"><span style="font-size: 16px;">二零一六年十一月二十四日作</span></p><p><br/></p>', N'13', N'2017-11-18 18:08:52.717', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'9', N'将欲取之，必先予之', N'因为太过伤感，所以不再提起。流年倒影退去年华，一切所经历过的。我只是想好好保存，在自己的记忆里', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;外面，突如其来的刀光把天空劈成两半，天空为之一破，瞬间浓云密布，天地陡暗。子弹般的雨从天空深处扫下，攻击着我安乐的居所。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">居所里，好多美味的食物，触手可及，我可以在其中尽情享乐。那剪断阳光的盖子为我挡下雨的侵袭，我在里面悠哉悠哉，不用为食物而顾虑，不用被天敌所追杀。可这里，除了黑暗，依旧，黑暗。除了食物，还是食物，世界那么大，我想去看看，去看看那水彩未干的天空，去听听那来自大自然的潺潺呢喃，去嗅嗅那花儿身上的馥郁香息。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;所以，我要冲破，这黑暗的囚笼，就算头破血流，就算，舍弃这满满的食物和安全感，就算，饿死，被杀死，哪怕，头破血流。所以，再见，食物们，我——要出去。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;看着这满满的食物，不觉饿了，不觉贪了，有点恶心了，它们贪婪地勾住我的欲望时，我更觉恶心了。我开始觉得，这绝不是一个安乐所，而是一个地狱!这个地狱里有许多贪婪而丑恶的“僵尸”，渐渐榨食你的信念，它们原形毕露了。我看着这些伪装者，哦！天哪，不要看它们，会诱惑你的，它们太美味了，舍弃它们，一定要出去！</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;那黑暗的上空，挤进一束光线，我不屑地看着它们，朝那方向去了。当我挥舞着翅膀冲向天空时，前方是一面无形的墙，我被挡住了，没有去路，留给自己的，是一片无助的黑。下方，一片腐烂的罪恶，我好饿，好累，它们，它们好香，不！不要看！舍弃！舍弃它们！</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;很久，雨下得很久很久。而我，撑着那片封闭的天，不断喘息，满身狼狈。一扭头，又能看见它们戴着天使的伪具向我招手。筋疲力尽的我，俯看它们，又像一个恐怖的黑洞，使劲地，使劲地把我往下吸，而我，使劲逃脱着，逃脱着。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;当一个倒立着的塑料瓶倒了，在一个垃圾房里，一个黑点趁此冲向了那天空的蔚蓝，悄无——声息。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;刺痛扔像烟气般缠绕在我软绵绵的躯体上，但我看见了水彩未干的天空，像梦一样温柔的风儿，潺潺的水声以及芬香的花朵，我看见身后，那被我舍弃的食物们，不再后悔，因为我拥有了生存的斗志，我会拥有更多，得到更好。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;我自由地飞行着，尽情享受阳光的抚摸，不时便有猎物撞入自己的视线，或许是敌人。我会因找不到食物而忧虑，会因敌人的追杀而逃命，自己是捕食者，也是被捕食者。我不再恐惧:</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">因为，将欲取之，必先予之。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;因为，我想要得到什么，必先，付出什么。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">因为，我舍弃了，那一瓶该舍弃的，得到了一个世界，全新的，一个不该舍弃、逃避的世界，是多么美好。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">外面，突如其来的刀光把天空劈成两半，天空为之一破，子弹般的雨从天空深处扫下，一个小黑点躲在一团深绿下，驻赏，这世界的美好。</p><p><br/></p>', N'14', N'2017-11-18 18:09:31.583', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'10', N'最美的年纪遇见你', N'岁月那场相遇。原本两个世界的人，经过一段时间的洗礼。最终回到个自的世界，没有时间的误差。没有岁月的巧遇，一切只是太过匆匆', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">“最美的年华遇见你”，一句算不上告白的告白，让我们赌上了12年的友情，既而赌上了一辈子的幸福。决定没错，我们并未错过，即便是12年有朋友，我们依旧可以做好全新的伴侣角色！</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">记不清第一次的相识，记不住12年朋友的点滴，记忆中你的样子越来越模糊，好像注定你一直是现在的样子。那个记忆中阳光义气的男孩，那个比我大不了几天，确一直让我叫哥哥的朋友，那个为了爱为了情而去部队呆了两年的少年，那个据说很叛逆的很叛逆的非主流，那个……一切的一切都成为了过去，如今的你成熟、孝顺、对我很好，用行动一点点的渗入我的生活，从而成为了那个即将要和我步入婚姻的另一半。哪怕过去是朋友，但是我不问你任何关于过去的你，即使知道一些，我也不问，因为那是你的过去，作为朋友，我参与的过去是什么样，我就接受什么样的你，而你的未来，有我相伴，好也坏，坏也好，有我有你未来还有家！这样的生活就够了。</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">有时候我总在想，为什么那么多的人中，我会选择你，会选择一个相识了十二年，就像左右手一样的你！其实仔细想想好像也不是很奇怪！和你相处其实很自在，我不用担心自己不够好，不用担心没有话题聊，慢慢的自己学会在你面前无理取闹，慢慢的自己学会在你面前任性放纵，不在做那个倔强的自己，不在做那个理性到只有一个人的时候才感性的自己。也许这才是为什么选择了你。我知道，其实我并不够好，因为你一直在包容，一直在为了我而努力！而我还在给你压力，就像现在，你那么辛苦一样，有时我还是会和你闹。我会一点点的去学会体谅你，会学着做好一个女朋友，做好一个妻子应该做的。26岁，我们都已经不在年轻，我们要为了更好而去努力，希望未来的日子，我们可以相处得更好！</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">2013年的时候，我们经常会通很久很久的电话，记得当时宿舍的室友都说是我男朋友打的，每次在笑，笑得特别开心，因为觉得有个可以肆无忌惮聊天的朋友真好。从来没想过，有一天，你真的会成为我的对象！当我把这个消息告诉他们的时候，他们既然一点也不意外，感觉好像你本来就应该是一样，他们早已经适应了你的身份，表示很无奈啊！或许慢慢的“表示很无奈啊”表现的是另类的一种幸福， 只是针对你才会有这种感觉，不知道为什么，慢慢的你就走入了进来，成为了我生活的另一伴；</p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 2em; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">爱情的最高境界，不是我爱你，而是我习惯了有你。就像一杯白开水，伸手可及，淡而无味，而我们习惯有它，也离不开他。爱情也是如此，你习惯了生活中有他，他习惯了生活中有你。彼此习惯，彼此依赖，才是最深的相爱。爱到深处就是习惯一个人的习惯。明明我们真正相处才不到一年的时间，确感觉时间好长好长，好像相处了好久好久，不知不觉中，给了我一种熟悉的感觉，好像注定就应该在一起一样，即使过去的12年，我们一直是朋友，连基本的暧昧都没有过，然后此时，确早已习惯了生活中有彼此的存在，有时候因为忙，好久没看到信息，没有电话，就会不自觉的瞎想，不自觉的担心。也许，这就是所谓的爱情！</p><p><br/></p>', N'15', N'2017-11-19 09:53:34.607', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'13', N'浅遇深藏，温柔时光', N'  红尘冷暖，岁月清浅，仓促间，遗落一地，如诗的句点，不甘愿，不决绝，掬一份刻骨的思念，系一根心的挂牵，在你回眸的瞬间，一抹兰轩的底色，悄然纳于心间，不问深浅，暖一世的欢颜。', N'<p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;"><span class="Apple-converted-space">&nbsp;</span>红尘冷暖，岁月清浅，仓促间，遗落一地，如诗的句点，不甘愿，不决绝，掬一份刻骨的思念，系一根心的挂牵，在你回眸的瞬间，一抹兰轩的底色，悄然纳于心间，不问深浅，暖一世的欢颜。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);">----------<span style="font-family: 宋体;">题记</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;">&nbsp; 近来，有丝丝倦怠，铺天盖地的不肯离开，执笔，画圈，一闪而过的念，总是一而再，再而三的被搁浅，那些不情不愿的小情绪，占领了太多的空间，庸庸碌碌中，任光阴无情的在指缝中删删减减。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;">&nbsp; 早春，微寒缠绵，风，温和的吹醒，春的语言，柳丝抽芽，百花争艳，桃花灼灼的世界是温婉多情的烟花三月。柳岸花堤，亭水榭间，行吟山水，一梦千年。“水光潋滟晴方好，山色空蒙雨亦奇。欲把西湖比西子，淡妆浓抹总相宜”。爱上一座城，爱它的雅韵别致，温润纤细，痴恋一场雨，恋它的清新淡雅，水墨成烟。空蒙蒙的烟雨，摇曳着柳枝，泪水涟涟。古往今来，江南春梦，被悠悠岁华，洗濯了千年。忧怨的姑娘，青石板的小巷，一柄多情的油纸伞，清晰而玲珑的在一湖瘦水中沉淀。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;">&nbsp; 一朵时光，反复的被书写，写一程山水，春意翩翩，写柴米油盐，独自清闲，写万千的情意，羽化成美丽的语言，写小小的心绪，深深浅浅，心中，始终有一处温暖，如雨后的晨露，洋溢在眉眼，不增不减。佛说：“欲行净土，当净其心，随其心净，即佛土净。圣人求心不求佛，愚人求佛不求心；智者调心不调身，愚者调身不调心。”拥一颗禅心，平和宁静，不攀比，不争名夺利，在温和的光阴中，恪守自己，品人生百味，世事洞明。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;">&nbsp; 我心中对于圆满，或许不是鲜衣怒马，也或许不是海棠佳话，而是，一段清简的况味，禅风流韵，与喜欢的人，素心相对，你护我冷暖，我慰你心安，在眼眸顾盼的瞬间，捕捉着岁月最美的箴言，一人一心，一花一叶。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;">&nbsp; 如水的良辰，闲云悠悠，薄薄的阳光，还在云上，怀惴着晴朗，与风月对望，迎风中伫立，将繁华与落寞，细细丈量，佛说；万物皆有因果，世事变幻无常，命运，向你掩盖了一扇门，定会为你打开另一窗，只要你用心承载着阳光，便是明媚不可阻挡的方向。</span></p><p style="margin-top: 0px; margin-bottom: 1em; padding: 0px; list-style: none; text-indent: 27px; color: rgb(79, 93, 65); font-family: Simsun; font-size: 14px; white-space: normal; background-color: rgb(255, 255, 255);"><span style="font-family: 宋体;">&nbsp; 行走在岁月的小巷，听风，读雨，夜色空寂，一切烟云，皆会慢慢散去，光阴眷顾，你我默默相依，慢慢老去，红尘若可安好，便可不悲不喜，不离不弃，情真意切，绵绵无期。</span></p><p><br/></p>', N'11', N'2017-11-18 18:03:00.343', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'27', N'你值得拥有更好的，你终将会遇到那个他', N'“一个眼神，一个唇语，一个微笑，在心中就是他给予爱的证明。我很爱他，为了他我宁愿请假旷工去找他，他玩游戏需要钱我二话不说给他送过去，我周末推掉了和闺蜜在一起的时光', N'<p><img src="/Content/ueditor/net/upload/image/20171123/6364704242431784848125844.jpg" title="abbd0e9f6e009293e516f1dbfc4c6805.jpg" alt="abbd0e9f6e009293e516f1dbfc4c6805.jpg"/></p><p>“一个眼神，一个唇语，一个微笑，在心中就是他给予爱的证明。我很爱他，为了他我宁愿请假旷工去找他，他玩游戏需要钱我二话不说给他送过去，我周末推掉了和闺蜜在一起的时光，只为和他在一起，可是最后他还是不声不响地离开了我，连消息也不回，还把我设置无法回复。难道是我真的长得很丑，让他厌倦了吗?”我一个闺蜜曾这样向我倾诉，我只回答：“都是你自己犯贱，明明知道他已经不爱你了，还告诉自己他爱你，遇上渣男是你自己活该。”看着自己闺蜜为了这么一个只有花言巧语，却没有行动的的渣男伤心痛苦了半年之久，我其实是不愿说出这么残酷的话的，毕竟谁都没有错。</p><p>女人永远都是初开的花蕾，好的爱情会让她甜美动人，不好的爱情会让她含苞凋谢。可是谁又能保证自己不会遇上1-2个渣男呢?遇上就当是场锻炼情场的经历，以后长点心眼吧。</p><p>闺蜜小刘之前通过一个交友软件认识了一个比她小6岁的男友，他们初见面时就彼此一见钟情，唱歌，滑冰，和朋友一起晚餐等。不知不觉度过了3个月的蜜恋期，男友不再对她疼爱关心，蜜恋期的彼此分享的那些画面已经不复存在。起初闺蜜不怎么在意这段感情，因为觉得年龄相差太大，所以没抱有太大的希望。闺蜜对男友有点冷漠，但她的男友却时常主动和她聊天。可是渐渐地男友发现闺蜜是一个农村小镇上的女孩，而且也没什么过大的资产，车，房子也没有。后来就开始对小刘不理不睬。</p><p>小刘曾犹犹豫这段感情，不是因为小刘觉得男友不好，而是小刘怕自己成为男友的压力。小刘的男友在国外念书，他们认识的时候，小刘的男友才上高三。他们认识的6个月，男友才上大学。他们只能在男友假期的时候见面，但即使这样，他们总是很少见面。小刘要忙工作，而她男友要忙着玩。当小刘想通要和男友一起度过余生的时候，男友却常常借故说要和他的爸妈去什么地方等借口。小刘说最后一次见面的时候，还是小刘逼着男友见她的。</p><p>遇上渣男，小刘一直不承认，还希望男友会一直爱她。可是没有任何结果。最后我劝告闺蜜把男友的所有联系方式都删除掉。之后6个月的时间里，闺蜜就像失了魂魄的人一样，陷入了无比的自责中，怪她不好好珍惜。我总在她耳边说，“此人就是渣男，他爱你的话，为什么不回你消息，为什么总在找借口。更何况，他也不能给你任何陪伴。人家不是说，要不给你钱，房子，车子;要不给你陪伴。他时间，金钱都不愿意给你。你还在期待，我看你也是渣，作践自己，就是犯贱。”每次闺蜜听到我的话，总是大哭一场，后来微笑对我说，我说的很有道理。</p><p>6个月中，我不离不弃地在小刘身边。看到她如此脆弱，我的心更是心疼。上班的时候，她总是大大咧咧地笑着，可是回到家，常常抱着我哭泣。我常常告诉她，“忘了吧，咱别再作践自己了。一切随它自生自灭吧，告诉自己遇到渣男，也说明自己渣。改变自己才是最重要的。闺蜜虽然道理都懂，可是还是免不了伤感。她几乎得了抑郁症，除了哭，她也没做其他。后来闺蜜欠了很多外债，信用卡透支5万元，外债5千多。这更是让闺蜜痛不欲生，她一个月才3千多的工资，租房2100元。在北上广深的城市，闺蜜的这点工资还不够塞牙缝。</p><p>在家，她已经割掉自己的手腕5次了，我每天胆战心惊地猜想她会在哪自杀，然后下班了就去那个地方，她总是在。后来闺蜜的爸妈帮助她还了5万元，闺蜜去了一个900元的宿舍住。闺蜜慢慢一点点还外债。每个月生活很是拮据。她怕总是影响我，之后就搬出我家。我跟她说，你要是难受，可以去癫狂人生APP里面说说啊，里面有很多听众还有很多和你一样的人，倾听你的声音，或许能好好开导你。之后她就很少和我说她不开心的事情，我也没问。</p><p>一个月后，闺蜜突然开着她爱的奔驰来到我家门口。她告诉我她在自主创业中，在筹划自己的工作室，并邀请我做股东，听了她对公司的一切规划，我二话不说就答应了。</p><p>她说等她工作室稳定后，她准备筹划在自己的家乡建一所心理咨询的公司，想帮助更多的女孩度过情感挫折的时间。</p><p>后来闺蜜遇到了她现在的老公，他们有可爱的孩子。他老公不仅愿意为她开公司，还每天都会早起为闺蜜做早餐，上下班绝对接送小刘。</p><p>谈及以前那段不自知的感情。闺蜜只是笑了笑。她反过来常安慰我说：“作为女性，我们每一个人都值得拥有更好的。只要把自己变得更好，就会遇到和自己同频率的人。”这让我印象很是深刻。</p><p>你值得拥有更好的，把自己变得更好，一定会找到那个肯为你花费时间，金钱和你同频率的那个人。</p><p><br/></p>', N'21', N'2017-11-23 14:01:00.897', N'1')
GO
GO
INSERT INTO [dbo].[article] ([id], [title], [desc], [content], [cateid], [time], [creator]) VALUES (N'30', N'ASp.NET MVC5 Blog架构', N'关于此次课程设计，我的开发流程，谢谢观看！', N'<p><span style="font-family: 楷体, 楷体_GB2312, SimKai;">(ps:在线演示地址-前台：&nbsp;</span><a href="http://asp.zyang.top" target="_self" title="http://asp.zyang.top" style="font-family: 楷体, 楷体_GB2312, SimKai; text-decoration: underline;"><span style="font-family: 楷体, 楷体_GB2312, SimKai;">http://asp.zyang.top</span></a><span style="font-family: 楷体, 楷体_GB2312, SimKai;">&nbsp; &nbsp;后台:&nbsp; </span><a href="http://asp.zyang.top/admin" style="font-family: 楷体, 楷体_GB2312, SimKai; text-decoration: underline;"><span style="font-family: 楷体, 楷体_GB2312, SimKai;">http://asp.zyang.top/admin</span></a><span style="font-family: 楷体, 楷体_GB2312, SimKai;">&nbsp;)&nbsp; &nbsp;</span></p><p><span style="font-family: 楷体, 楷体_GB2312, SimKai;">&nbsp;(账号和密码都是： admin&nbsp; &nbsp; &nbsp;源码下载链接：</span><a href="https://pan.baidu.com/s/1i5KkXdr" style="font-family: 楷体, 楷体_GB2312, SimKai; text-decoration: underline;"><span style="font-family: 楷体, 楷体_GB2312, SimKai;">https://pan.baidu.com/s/1i5KkXdr</span></a><span style="font-family: 楷体, 楷体_GB2312, SimKai;">&nbsp; )</span></p><p><br/></p><h2>开发流程：&nbsp;</h2><h2><span style="background-color: rgb(255, 255, 0); font-size: 16px;">设计数据表-&gt;根据数据表生成上下文和模型类-&gt;分别创建前后台的Layout页-&gt;创建业务所需的控制器-&gt;实现方法和添加视图</span></h2><ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><h3>设计数据表&nbsp;</h3><h4></h4><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738572372349268311451.png" title="image.png" alt="image.png" width="448" height="296"/></p></li><li><h3>表结构：</h3><p><span style="background-color: rgb(255, 0, 0);">admin表</span></p><p><span style="background-color: rgb(255, 0, 0);"></span></p><p><span style="background-color: rgb(255, 0, 0);"></span></p><p><br/></p><p><span style="background-color: rgb(255, 0, 0);"></span></p><p><br/></p><p style="text-align:center"><img src="http://asp.zyang.top/Content/ueditor/net/upload/image/20171127/6364738589105155632758204.png" title="image.png" alt="image.png"/></p></li></ol><p><span style="background-color: rgb(192, 0, 0);"><br/></span></p><p><span style="background-color: rgb(255, 0, 0);">article表</span><br/></p><p><span style="background-color: rgb(255, 0, 0);"><br/></span></p><p><br/></p><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738602705160071342772.png" title="image.png" alt="image.png"/></p><p><span style="background-color: rgb(255, 0, 0);">cate表</span></p><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738649048905458027587.png" title="image.png" alt="image.png"/></p><p><br/></p><p><span style="background-color: rgb(255, 0, 0);">link表</span></p><p style="text-align:center"><span style="background-color: rgb(255, 0, 0);"><img src="/Content/ueditor/net/upload/image/20171127/6364738659473930466578625.png" title="image.png" alt="image.png"/></span></p><p><br/></p><h3><span style="background-color: rgb(255, 255, 255);">3.设计前后台布局页 ：</span></h3><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp;</span></p><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738674842674546391981.png" title="image.png" alt="image.png"/></p><p><span style="background-color: rgb(255, 255, 255);"></span><br/></p><p><br/></p><h3>4.创建实现所需业务的控制器</h3><p style="text-align:center"><img src="/Content/ueditor/net/upload/image/20171127/6364738684400468809692097.png" title="image.png" alt="image.png"/></p><p><br/></p><p><br/></p><p><br/></p><h3>5.方法具体实现，有兴趣的同学可以下载我的代码看看</h3><p><br/></p><h2><span style="font-family: 宋体, SimSun; color: rgb(255, 255, 0); background-color: rgb(0, 176, 240); font-size: 36px;">开发过程中所遇到的问题:</span></h2><p><br/></p><ol class=" list-paddingleft-2" style="list-style-type: decimal;"><li><p>前台布局：&nbsp;</p></li></ol><p>&nbsp; &nbsp; &nbsp; &nbsp; 前台主页(home/index),既需要循环遍历所有的文章并且分页，而且又要遍历出所有的<span style="background-color: rgb(255, 0, 0);">分类</span>，<span style="background-color: rgb(255, 0, 0);">最新文章</span>，<span style="background-color: rgb(255, 0, 0);">友情链接</span><span style="background-color: rgb(255, 255, 255);">。但是一个视图页只能@model一次，也就是通过集体在这个index页中遍历只能传一个list，</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp; 还有一种方法是Tuple，通过这种方法可以实现引入多个模型，但是相对比较繁琐。这里，我使用部分视图：</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;<img src="/Content/ueditor/net/upload/image/20171127/6364738733053594376388764.png" title="image.png" alt="image.png"/></span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; &nbsp;<img src="/Content/ueditor/net/upload/image/20171127/6364738735298914056528980.png" title="image.png" alt="image.png"/></span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;这两部分分别放在一个PatialView里面，然后通过助手函数@Html.Action(&quot;方法名&quot;,&quot;控制器名调用&quot;);</span></p><pre class="brush:html;toolbar:false;">&nbsp;&lt;div&nbsp;class=&quot;topbar&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;div&nbsp;class=&quot;inner&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;ul&nbsp;class=&quot;nav&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&nbsp;id=&quot;menu-item-180&quot;&nbsp;class=&quot;menu-item&nbsp;menu-item-type-taxonomy&nbsp;menu-item-object-category&nbsp;menu-item-180&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Html.ActionLink(&quot;首页&quot;,&nbsp;&quot;Index&quot;,&nbsp;&quot;Home&quot;)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/li&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Html.Action(&quot;showCates&quot;,&nbsp;&quot;Home&quot;)&nbsp;&nbsp;&nbsp;&nbsp;//展示所有分类，调用Home控制器下的showCates方法;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/ul&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/div&gt;</pre><p><span style="background-color: rgb(255, 255, 255);"></span><br/></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;</span></p><pre class="brush:c#;toolbar:false">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;PartialViewResult&nbsp;showCates()&nbsp;&nbsp;&nbsp;//Home控制器下的showCates方法
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;result&nbsp;=&nbsp;(from&nbsp;c&nbsp;in&nbsp;dbContext.cate&nbsp;where&nbsp;c.catname&nbsp;!=&nbsp;&quot;未分类&quot;&nbsp;select&nbsp;c).ToList&lt;cate&gt;();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;PartialView(result);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</pre><pre class="brush:html;toolbar:false">@model&nbsp;IEnumerable&lt;MyBlog.Models.cate&gt;&nbsp;&nbsp;&nbsp;//showCates的(patial)视图
&nbsp;&nbsp;&nbsp;&nbsp;@foreach&nbsp;(var&nbsp;c&nbsp;in&nbsp;Model)
&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;li&nbsp;id=&quot;menu-item-180&quot;&nbsp;class=&quot;menu-item&nbsp;menu-item-type-taxonomy&nbsp;menu-item-object-category&nbsp;menu-item-180&quot;&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;@Html.ActionLink(c.catname,&nbsp;&quot;ArticlesOfCate&quot;,&nbsp;&quot;Home&quot;,&nbsp;new&nbsp;{&nbsp;id&nbsp;=c.id&nbsp;},&nbsp;new&nbsp;{})
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&lt;/li&gt;
&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p>2.表单提交技术：<br/></p><p>&nbsp; &nbsp; &nbsp;jquery ajax 提交：</p><p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</p><pre class="brush:js;toolbar:false">&lt;script&gt;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(document).ready(function&nbsp;()&nbsp;{&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//登录表单提交
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(&quot;#btn-submit&quot;).click(function&nbsp;()&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$(&#39;#user&#39;).val())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(&quot;请输入用户名！&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(!$(&#39;#pwd&#39;).val())&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;alert(&quot;请输入密码！&quot;);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.ajax({
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;type:&nbsp;&quot;post&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;url:&nbsp;&quot;CkeckLogin&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;data:&nbsp;$(&quot;#form-login&quot;).serialize(),
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dataType:&nbsp;&quot;json&quot;,
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;success:&nbsp;function&nbsp;(msg)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(msg.status&nbsp;==&nbsp;1)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(msg.data);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;window.setTimeout(&quot;window.location.href=&#39;Info&#39;&quot;,&nbsp;1000);&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}&nbsp;else&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(msg.data);
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&lt;/script&gt;</pre><pre class="brush:c#;toolbar:false">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;public&nbsp;JsonResult&nbsp;CkeckLogin(string&nbsp;username,&nbsp;string&nbsp;password)&nbsp;&nbsp;&nbsp;&nbsp;//处理登录验证的方法&nbsp;&nbsp;Admin/CkeckLogin
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;var&nbsp;result&nbsp;=&nbsp;from&nbsp;u&nbsp;in&nbsp;dbContext.admin
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;where&nbsp;u.username&nbsp;==&nbsp;username&nbsp;&amp;&amp;&nbsp;u.password&nbsp;==&nbsp;password
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;select&nbsp;u;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if&nbsp;(result.Count()&nbsp;&gt;&nbsp;0)
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Session[&quot;username&quot;]&nbsp;=&nbsp;username;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;Json(new&nbsp;{&nbsp;status&nbsp;=&nbsp;1,&nbsp;data&nbsp;=&nbsp;&quot;登录成功！&quot;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return&nbsp;Json(new&nbsp;{&nbsp;status&nbsp;=&nbsp;0,&nbsp;data&nbsp;=&nbsp;&quot;登录失败！&quot;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; jquery Get提交:</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp;&nbsp;</span></p><pre class="brush:js;toolbar:false">//删除代码&nbsp;jquery的get请求
&nbsp;function&nbsp;cate_del(id,obj)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.confirm(&#39;确认要删除吗？&#39;,&nbsp;function&nbsp;(index)&nbsp;{
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;//此处请求后台程序，下方是成功后的前台处理……
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$.get(&quot;Cate/processDelete&quot;,&nbsp;{&nbsp;id:&nbsp;id&nbsp;})
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;$(obj).parents(&quot;tr&quot;).remove();
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;layer.msg(&#39;已删除!&#39;,&nbsp;{&nbsp;icon:&nbsp;1,&nbsp;time:&nbsp;1000&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;});
&nbsp;&nbsp;&nbsp;&nbsp;}</pre><p><span style="background-color: rgb(255, 255, 255);">3.用到的前端相关技术:&nbsp;</span></p><p><span style="background-color: rgb(255, 255, 255);">&nbsp; &nbsp; &nbsp; <span style="background-color: rgb(255, 0, 0);">bootstrap</span> ,<span style="background-color: rgb(255, 0, 0);">layer.js</span></span></p><p><span style="background-color: rgb(255, 255, 255);"><br/></span></p><p><span style="background-color: rgb(255, 255, 255);"><br/></span></p><p><br/></p>', N'23', N'2017-11-27 14:00:58.973', N'19')
GO
GO
SET IDENTITY_INSERT [dbo].[article] OFF
GO

-- ----------------------------
-- Table structure for cate
-- ----------------------------
DROP TABLE [dbo].[cate]
GO
CREATE TABLE [dbo].[cate] (
[id] int NOT NULL IDENTITY(1,1) ,
[catname] nvarchar(60) NOT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[cate]', RESEED, 23)
GO

-- ----------------------------
-- Records of cate
-- ----------------------------
SET IDENTITY_INSERT [dbo].[cate] ON
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'1', N'未分类')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'9', N'励志文章')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'10', N'情感美文')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'11', N'经典美文')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'12', N'爱情文章')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'13', N'人生感悟')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'14', N'经典语录')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'15', N'心情说说')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'20', N'人生哲理')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'21', N'文章精选')
GO
GO
INSERT INTO [dbo].[cate] ([id], [catname]) VALUES (N'23', N'编程技术')
GO
GO
SET IDENTITY_INSERT [dbo].[cate] OFF
GO

-- ----------------------------
-- Table structure for link
-- ----------------------------
DROP TABLE [dbo].[link]
GO
CREATE TABLE [dbo].[link] (
[id] int NOT NULL IDENTITY(1,1) ,
[title] nvarchar(50) NOT NULL ,
[url] nvarchar(50) NOT NULL ,
[desc] nvarchar(MAX) NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[link]', RESEED, 13)
GO

-- ----------------------------
-- Records of link
-- ----------------------------
SET IDENTITY_INSERT [dbo].[link] ON
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'4', N'励志文章', N'http://www.cnlianxue.com/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'5', N'博海拾贝', N'http://bohaishibei.com/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'6', N'好图网', N'http://www.haopic.me/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'7', N'左岸读书', N'http://www.zreading.cn/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'8', N'思念往昔', N'http://missever.com', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'9', N'经典语录', N'http://www.weiweiqi.com/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'10', N'美文网', N'http://www.meiwen.com.cn/', N'')
GO
GO
INSERT INTO [dbo].[link] ([id], [title], [url], [desc]) VALUES (N'11', N'青年图摘', N'http://www.qingniantuzhai.com/', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[link] OFF
GO

-- ----------------------------
-- Indexes structure for table admin
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table admin
-- ----------------------------
ALTER TABLE [dbo].[admin] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table article
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table article
-- ----------------------------
ALTER TABLE [dbo].[article] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table cate
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table cate
-- ----------------------------
ALTER TABLE [dbo].[cate] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Indexes structure for table link
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table link
-- ----------------------------
ALTER TABLE [dbo].[link] ADD PRIMARY KEY ([id])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[article]
-- ----------------------------
ALTER TABLE [dbo].[article] ADD FOREIGN KEY ([cateid]) REFERENCES [dbo].[cate] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
ALTER TABLE [dbo].[article] ADD FOREIGN KEY ([creator]) REFERENCES [dbo].[admin] ([id]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
