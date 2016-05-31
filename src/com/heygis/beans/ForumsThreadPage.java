package com.heygis.beans;

public class ForumsThreadPage {
	private int fid;
	private int page;
	private int beginPosi;
	private int endPosi;
	private int totalPage;
	private int thread_number;
	private ForumThread[] threadArray;
	
	public ForumsThreadPage(int fid, int page) {
		this.fid = fid;
		this.page = page;
		beginPosi = page * 10 + 1;
		endPosi = beginPosi + 29;
		threadArray = new ForumThread[30];
		thread_number=0;
	}
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		this.page = page;
	}
	public ForumThread[] getThreadArray() {
		return threadArray;
	}
	public void setThread(int i, ForumThread thread) {
		this.threadArray[i]= thread;
		thread_number = i;
	}
	public ForumThread getThread(int i) {
		return threadArray[i];
	}
}
