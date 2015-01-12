// News Article Hardline Creators
// Mix and Match easily


String a = "삼성전자, 5大 IT기업(구글·아마존·알리바바·애플·삼성) 중 미래 가장 어둡다";
String b = "北 김정은이 집권 후 처음으로 '정상회담 카드' 꺼낸 배경";
String c = "20~60대 직장인 '새해 어떤 일터서 일하고 싶나' 질문에";
String d = "'노처녀가 왜 시집 안 가는지 알아?' 법정 스님의 뜬금없는 물";
String e = "체코에서 15시간이면 1대 만드는 현대車, 한국은 얼마나 걸리나 ";

String[] list = {
  a, b, c, d, e
};

StringList slist = new StringList();

for ( int i = 0; i <list.length; i++) {
  slist.append(split(list[i], ' '));
}

String[] llist = new String[slist.size()];
for (int i = 0; i <slist.size (); i++) {
  llist[i] = slist.get(i);
}

int[] random = new int[9];
for (int i = 0; i < random.length; i++) {
  random[i] = floor(random(1)*llist.length);
  print(llist[random[i]]+' ');
}

