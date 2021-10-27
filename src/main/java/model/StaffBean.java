package model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Staff")
public class StaffBean implements Serializable{
	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	Integer id;
	String staffName;
	String staffPassword;
	String staffPosition;
	String staffPhone;
	Date staffBirthday;
	Date staffCheckInDay;
	String staffStatus;
	
	
	
	

	public StaffBean() {
		super();
	}

	public StaffBean(Integer id, String staffName, String staffPassword, String staffPosition, String staffPhone,
			Date staffBirthday, Date staffCheckInDay, String staffStatus) {
		super();
		this.id = id;
		this.staffName = staffName;
		this.staffPassword = staffPassword;
		this.staffPosition = staffPosition;
		this.staffPhone = staffPhone;
		this.staffBirthday = staffBirthday;
		this.staffCheckInDay = staffCheckInDay;
		this.staffStatus = staffStatus;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getStaffName() {
		return staffName;
	}

	public void setStaffName(String staffName) {
		this.staffName = staffName;
	}

	public String getStaffPassword() {
		return staffPassword;
	}

	public void setStaffPassword(String staffPassword) {
		this.staffPassword = staffPassword;
	}

	public String getStaffPosition() {
		return staffPosition;
	}

	public void setStaffPosition(String staffPosition) {
		this.staffPosition = staffPosition;
	}

	public String getStaffPhone() {
		return staffPhone;
	}

	public void setStaffPhone(String staffPhone) {
		this.staffPhone = staffPhone;
	}

	public Date getStaffBirthday() {
		return staffBirthday;
	}

	public void setStaffBirthday(Date staffBirthday) {
		this.staffBirthday = staffBirthday;
	}

	public Date getStaffCheckInDay() {
		return staffCheckInDay;
	}

	public void setStaffCheckInDay(Date staffCheckInDay) {
		this.staffCheckInDay = staffCheckInDay;
	}

	public String getStaffStatus() {
		return staffStatus;
	}

	public void setStaffStatus(String staffStatus) {
		this.staffStatus = staffStatus;
	}

}
