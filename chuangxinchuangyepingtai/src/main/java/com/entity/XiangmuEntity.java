package com.entity;

import com.baomidou.mybatisplus.annotations.TableId;
import com.baomidou.mybatisplus.annotations.TableName;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import java.lang.reflect.InvocationTargetException;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.beanutils.BeanUtils;
import com.baomidou.mybatisplus.annotations.TableField;
import com.baomidou.mybatisplus.enums.FieldFill;
import com.baomidou.mybatisplus.enums.IdType;

/**
 * 项目
 *
 * @author 
 * @email
 * @date 2021-04-06
 */
@TableName("xiangmu")
public class XiangmuEntity<T> implements Serializable {
    private static final long serialVersionUID = 1L;


	public XiangmuEntity() {

	}

	public XiangmuEntity(T t) {
		try {
			BeanUtils.copyProperties(this, t);
		} catch (IllegalAccessException | InvocationTargetException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}


    /**
     * 主键
     */
    @TableId(type = IdType.AUTO)
    @TableField(value = "id")

    private Integer id;


    /**
     * 项目名称
     */
    @TableField(value = "xiangmu_name")

    private String xiangmuName;


    /**
     * 项目预览图
     */
    @TableField(value = "xiangmu_photo")

    private String xiangmuPhoto;


    /**
     * 项目类型名称
     */
    @TableField(value = "leix_types")

    private Integer leixTypes;


    /**
     * 发布学生
     */
    @TableField(value = "yonghu_id")

    private Integer yonghuId;


    /**
     * 指导老师
     */
    @TableField(value = "jiaoshi_id")

    private Integer jiaoshiId;


    /**
     * 是否申报
     */
    @TableField(value = "shifou_types")

    private Integer shifouTypes;


    /**
     * 项目描述
     */
    @TableField(value = "xiangmu_content")

    private String xiangmuContent;


    /**
     * 创建时间
     */
    @JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat
    @TableField(value = "create_time",fill = FieldFill.INSERT)

    private Date createTime;


    /**
	 * 设置：主键
	 */
    public Integer getId() {
        return id;
    }


    /**
	 * 获取：主键
	 */

    public void setId(Integer id) {
        this.id = id;
    }
    /**
	 * 设置：项目名称
	 */
    public String getXiangmuName() {
        return xiangmuName;
    }


    /**
	 * 获取：项目名称
	 */

    public void setXiangmuName(String xiangmuName) {
        this.xiangmuName = xiangmuName;
    }
    /**
	 * 设置：项目预览图
	 */
    public String getXiangmuPhoto() {
        return xiangmuPhoto;
    }


    /**
	 * 获取：项目预览图
	 */

    public void setXiangmuPhoto(String xiangmuPhoto) {
        this.xiangmuPhoto = xiangmuPhoto;
    }
    /**
	 * 设置：项目类型名称
	 */
    public Integer getLeixTypes() {
        return leixTypes;
    }


    /**
	 * 获取：项目类型名称
	 */

    public void setLeixTypes(Integer leixTypes) {
        this.leixTypes = leixTypes;
    }
    /**
	 * 设置：发布学生
	 */
    public Integer getYonghuId() {
        return yonghuId;
    }


    /**
	 * 获取：发布学生
	 */

    public void setYonghuId(Integer yonghuId) {
        this.yonghuId = yonghuId;
    }
    /**
	 * 设置：指导老师
	 */
    public Integer getJiaoshiId() {
        return jiaoshiId;
    }


    /**
	 * 获取：指导老师
	 */

    public void setJiaoshiId(Integer jiaoshiId) {
        this.jiaoshiId = jiaoshiId;
    }
    /**
	 * 设置：是否申报
	 */
    public Integer getShifouTypes() {
        return shifouTypes;
    }


    /**
	 * 获取：是否申报
	 */

    public void setShifouTypes(Integer shifouTypes) {
        this.shifouTypes = shifouTypes;
    }
    /**
	 * 设置：项目描述
	 */
    public String getXiangmuContent() {
        return xiangmuContent;
    }


    /**
	 * 获取：项目描述
	 */

    public void setXiangmuContent(String xiangmuContent) {
        this.xiangmuContent = xiangmuContent;
    }
    /**
	 * 设置：创建时间
	 */
    public Date getCreateTime() {
        return createTime;
    }


    /**
	 * 获取：创建时间
	 */

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    @Override
    public String toString() {
        return "Xiangmu{" +
            "id=" + id +
            ", xiangmuName=" + xiangmuName +
            ", xiangmuPhoto=" + xiangmuPhoto +
            ", leixTypes=" + leixTypes +
            ", yonghuId=" + yonghuId +
            ", jiaoshiId=" + jiaoshiId +
            ", shifouTypes=" + shifouTypes +
            ", xiangmuContent=" + xiangmuContent +
            ", createTime=" + createTime +
        "}";
    }
}
