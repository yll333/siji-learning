DELETE FROM notes;
DELETE FROM progress;
DELETE FROM lessons;
DELETE FROM courses;

INSERT INTO courses (id, title, description, category, difficulty, is_published) VALUES
('a1000000-0000-0000-0000-000000000001', '大学', '《大学》是《四书》之首，原为《礼记》中的一篇，相传为曾子所作。它与《中庸》《论语》《孟子》合称"四书"，是儒家思想的入门经典。《大学》提出了"明明德""亲民""止于至善"三纲领，以及"格物""致知""诚意""正心""修身""齐家""治国""平天下"八条目，成为后世儒家修身治国的理论框架。', '四书', 'beginner', true),
('a2000000-0000-0000-0000-000000000002', '中庸', '《中庸》是儒家思想的核心论述，相传为子思所作，是"四书"之一。《中庸》阐述了"中庸之道"，即不偏不倚、适度而为的最高道德原则。它既是宇宙万物的根本法则，也是人格修养的最高境界。全书强调"诚"的重要性，认为"诚者，天之道也；诚之者，人之道也"。', '四书', 'intermediate', true),
('a3000000-0000-0000-0000-000000000003', '论语', '《论语》是孔子及其弟子言行的记录，由孔子的弟子及再传弟子编撰而成，是"四书"之一。《论语》共二十篇，涵盖了孔子的政治思想、伦理观念、教育理论和处世哲学，是了解儒家思想最基本、最权威的文献。', '四书', 'intermediate', true),
('a4000000-0000-0000-0000-000000000004', '孟子', '《孟子》是孟子和弟子及同时代儒者的对话集，由孟子及其弟子共同编写，是"四书"之一。《孟子》共七篇，主要阐述了孟子的性善论、民本思想、仁政学说和浩然之气等核心概念，是先秦儒家思想的重要发展。', '四书', 'advanced', true);

DO $$
DECLARE
  course_id UUID;
BEGIN
  SELECT id INTO course_id FROM courses WHERE title = '大学' LIMIT 1;
  INSERT INTO lessons (course_id, title, content_type, content, order_index) VALUES
  (course_id, '经一章：大学之道', 'text', '{"original":"大学之道，在明明德，在亲民，在止于至善。","notes":"大学：大人之学。明德：光明正大的德行。亲民：使民新。止于至善：达到最完美的境界。","translation":"大学的宗旨，在于彰显光明的品德，在于使人弃旧图新，在于使人达到最完美的境界。","analysis":"开篇三纲领，提纲挈领，为整个儒家修身治国思想的核心宗旨。"}', 1);
END $$;

DO $$
DECLARE
  course_id UUID;
BEGIN
  SELECT id INTO course_id FROM courses WHERE title = '中庸' LIMIT 1;
  INSERT INTO lessons (course_id, title, content_type, content, order_index) VALUES
  (course_id, '第一章', 'text', '{"original":"天命之谓性，率性之谓道，修道之谓教。","notes":"天命：天赋。率性：遵循本性。道：道路、规律。教：教化。","translation":"上天赋予的叫做性，顺着本性去做的叫做道，修习道的叫做教。","analysis":"《中庸》开篇三句，言简意赅，道出了天性、道、教三者的关系。"}', 1),
  (course_id, '第十二章', 'text', '{"original":"君子之道，费而隐。夫妇之愚，可以与知焉；及其至也，虽圣人亦有所不知焉。","notes":"费：广大。隐：精微。夫妇：匹夫匹妇，普通人。","translation":"君子之道，用处很广而且道理精微。即使是普通人，只要努力也可以明白；但要达到最高境界，即使是圣人也有些地方不够明白。","analysis":"道不远人，人皆可行；但其理精微，高深莫测。"}', 2),
  (course_id, '第二十章', 'text', '{"original":"博学之，审问之，慎思之，明辨之，笃行之。","notes":"博：广泛。审：详细。笃：忠实、切实。","translation":"要广博地学习，详细地求教，谨慎地思考，清楚地辨别，切实地行动。","analysis":"学问思辨行，五者并重，是儒家治学的根本方法。"}', 3);
END $$;

DO $$
DECLARE
  course_id UUID;
BEGIN
  SELECT id INTO course_id FROM courses WHERE title = '论语' LIMIT 1;
  INSERT INTO lessons (course_id, title, content_type, content, order_index) VALUES
  (course_id, '学而第一·第一章', 'text', '{"original":"学而时习之，不亦说乎？有朋自远方来，不亦乐乎？人不知而不愠，不亦君子乎？","notes":"习：复习、练习。说：悦。愠：恼怒。","translation":"学习知识后时常复习，不是很喜悦吗？有志同道合的朋友从远方来，不是很快乐吗？别人不了解我而不恼怒，不也是君子吗？","analysis":"孔门三乐：学业有得为乐，求友得师为乐，修养自足为乐。"}', 1),
  (course_id, '为政第二·第一章', 'text', '{"original":"为政以德，譬如北辰，居其所而众星共之。","notes":"北辰：北极星。共：拱。","translation":"用德行来治理国政，就像北极星一样，安坐在自己的位置上，而众多的星辰都环绕着它。","analysis":"以德治国，无为而治，是孔子政治思想的核心理念。"}', 2),
  (course_id, '里仁第四·第十五章', 'text', '{"original":"子曰：参乎！吾道一以贯之。曾子曰：唯。子出，门人问曰：何谓也？曾子曰：夫子之道，忠恕而已矣。","notes":"参：曾参。贯：贯穿。忠：尽心尽力。恕：推己及人。","analysis":"孔子之道，一以贯之，曾子以忠恕二字概括，深得孔子之心。"}', 3),
  (course_id, '述而第七·第一章', 'text', '{"original":"子曰：述而不作，信而好古，窃比于我老彭。","notes":"述：传述。作：创造。窃：私下。老彭：老子和彭祖。","translation":"传述而不创作，相信并爱好古代文化，我私下把自己比作老子和彭祖。","analysis":"孔子谦称自己只是传承文化而非创新，体现了他对古代文明的崇敬。"}', 4),
  (course_id, '子罕第九·第二十九章', 'text', '{"original":"子曰：知之者不如好之者，好之者不如乐之者。","notes":"之：学问道德。乐：以之为乐。","translation":"懂得它的人比不上喜爱它的人，喜爱它的人比不上以它为乐的人。","analysis":"治学三境界：知、好、乐，以乐为最高境界。"}', 5),
  (course_id, '卫灵公第十五章', 'text', '{"original":"子曰：己所不欲，勿施于人。","notes":"欲：想要。施：施加。","translation":"自己所不想要的事物，就不要强加给别人。","analysis":"恕道之精华，儒家伦理的黄金法则，为千古处世之圭臬。"}', 6);
END $$;

DO $$
DECLARE
  course_id UUID;
BEGIN
  SELECT id INTO course_id FROM courses WHERE title = '孟子' LIMIT 1;
  INSERT INTO lessons (course_id, title, content_type, content, order_index) VALUES
  (course_id, '梁惠王章句上·第一章', 'text', '{"original":"孟子见梁惠王。王曰：叟！不远千里而来，亦将有以利吾国乎？孟子对曰：王何必曰利？亦有仁义而已矣。","notes":"叟：老先生。仁义：仁爱和正义。","translation":"孟子拜见梁惠王。梁惠王说：老先生！您不远千里而来，一定有什么对我国有利的吧？孟子回答说：大王何必说利呢？只要有仁义就够了。","analysis":"孟子言义不言利，以仁义为本，体现了儒家重义轻利的价值取向。"}', 1),
  (course_id, '公孙丑上·第二章', 'text', '{"original":"敢问何谓浩然之气？曰：难言也。其为气也，至大至刚，以直养而无害，则塞于天地之间。","notes":"浩然之气：正大刚直的气概。直：正当。","translation":"请问什么叫做浩然之气？孟子说：很难说明。它作为一种气，最盛大最刚强，用正直去培养而不损害它，就会充满在天地之间。","analysis":"浩然之气，是孟子人格修养的最高境界，体现了一种充塞天地的正义感。"}', 2),
  (course_id, '滕文公上·第四章', 'text', '{"original":"民事不可缓也。诗云：昼尔于茅，宵尔索绹；亟其乘屋，其始播百谷。","notes":"民事：百姓的事。亟：急。乘屋：修缮房屋。","translation":"百姓的事不能缓慢。白天去割茅草，晚上搓绳子；赶紧修缮房屋，那时就要开始播种百谷了。","analysis":"孟子强调以民为本，关心百姓的生产生活。"}', 3),
  (course_id, '离娄上·第一章', 'text', '{"original":"离娄之明，公输子之巧，不以规矩，不能成方圆；师旷之聪，不以六律，不能正五音。","notes":"离娄：传说中视力极好的人。公输子：鲁班。规矩：圆规和曲尺。","translation":"即使有离娄的视力，鲁班的技术，不用圆规和曲尺，也不能画出方形和圆形；即使有师旷的听力，不用六律，也不能校正五音。","analysis":"离娄、公输、师旷都是能工巧匠，但无工具则不能成事——制度规范的重要性。"}', 4),
  (course_id, '告子上·第一章', 'text', '{"original":"告子曰：性，犹杞柳也；义，犹桮棬也。以人性为仁义，犹以杞柳为桮棬。","notes":"杞柳：树木。桮棬：杯盘等容器。","translation":"告子说：人的本性就像杞柳树，仁义就像杯盘；把人的本性塑造成仁义，就好像用杞柳来制作杯盘。","analysis":"告子主张性无善恶，仁义是后天外加的，与孟子性善论相对。"}', 5),
  (course_id, '尽心下·第三章', 'text', '{"original":"民为贵，社稷次之，君为轻。","notes":"社稷：土神和谷神，代指国家。轻：轻微。","translation":"百姓最重要，国家次之，国君为轻。","analysis":"民本思想最精辟的概括，孟子里最著名的政治哲学命题。"}', 6);
END $$;
