package Bean;

public class subway {
	private int stop_id;//站号
	private int line_id;//线路号
	private String stop_name;//站名
	private String line_name;//线路名
	private int change;//换线的线路号
	private int seq;//该站在该线路中的位置
	public int getStop_id() {
		return stop_id;
	}
	public void setStop_id(int stop_id) {
		this.stop_id = stop_id;
	}
	public int getLine_id() {
		return line_id;
	}
	public void setLine_id(int line_id) {
		this.line_id = line_id;
	}
	public String getStop_name() {
		return stop_name;
	}
	public void setStop_name(String stop_name) {
		this.stop_name = stop_name;
	}
	public String getLine_name() {
		return line_name;
	}
	public void setLine_name(String line_name) {
		this.line_name = line_name;
	}
	public int getChange() {
		return change;
	}
	public void setChange(int change) {
		this.change = change;
	}
	public int getSeq() {
		return seq;
	}
	public void setSeq(int seq) {
		this.seq = seq;
	}
	public subway(){}
	public subway(String stop_name) {};
	public subway(int stop_id) {};
}
