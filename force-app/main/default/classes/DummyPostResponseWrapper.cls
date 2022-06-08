public with sharing class DummyPostResponseWrapper {
    public list<post> posts;

    public class Post{
        public integer id;
        public string title;
        public string body;
        public integer userID;
        public list<string> tags;


    }
}
