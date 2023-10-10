<html>
<body>
<h2>Hello World!</h2>
</body>
</html>
1. Mapper_ 목록 수정, 전체 갯수 추가
2. DAO(Repo)_List<이름>, totalCount / Page로!!!!!
3. DAOImpl(RepoImpl)_그대로 -> page
4. Service도 마찬가지 (3번 처럼 하라)
5. Controller_List만 total로 가지고 오기
6. View_nav, form form이 검색

검색 type 추가가 되면 Mapper에 choose 밑에 when 추가~~
Controller에서 setPostCount -> 한페이지어ㅔ 리스트 글 갯수