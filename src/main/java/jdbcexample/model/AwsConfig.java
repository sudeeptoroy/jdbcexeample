package jdbcexample.model;

import org.hibernate.validator.constraints.NotBlank;
import org.springframework.data.annotation.CreatedDate;
import org.springframework.data.annotation.LastModifiedDate;
import org.springframework.data.jpa.domain.support.AuditingEntityListener;

import javax.persistence.*;
import java.util.Date;



@Entity
@Table(name = "AWSCONFIG")
@EntityListeners(AuditingEntityListener.class)
public class AwsConfig {
    @Id
    @Column(updatable = false)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @NotBlank
    private String type;

    @NotBlank
    private String accessKey;

    @NotBlank
    private String secretKey;

    @NotBlank
    private String region;

    @NotBlank
    private String instanceType;

    @NotBlank
    private String sshUsername;

    @NotBlank
    private String amiName;

    @OneToOne(fetch= FetchType.EAGER, cascade= CascadeType.ALL, mappedBy = "awsconfig")
    private BaseImage baseimage;

    @OneToOne(fetch= FetchType.EAGER)
    @JoinColumn(name="masterconfig_id")
    private MasterConfig masterconfig;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getAccessKey() {
        return accessKey;
    }

    public void setAccessKey(String accessKey) {
        this.accessKey = accessKey;
    }

    public String getSecretKey() {
        return secretKey;
    }

    public void setSecretKey(String secretKey) {
        this.secretKey = secretKey;
    }

    public String getRegion() {
        return region;
    }

    public void setRegion(String region) {
        this.region = region;
    }

    public String getInstanceType() {
        return instanceType;
    }

    public void setInstanceType(String instanceType) {
        this.instanceType = instanceType;
    }

    public String getSshUsername() {
        return sshUsername;
    }

    public void setSshUsername(String sshUsername) {
        this.sshUsername = sshUsername;
    }

    public String getAmiName() {
        return amiName;
    }

    public void setAmiName(String amiName) {
        this.amiName = amiName;
    }

    public BaseImage getBaseimage() {
        return baseimage;
    }

    public void setBaseimage(BaseImage baseimage) {
        this.baseimage = baseimage;
    }


    public MasterConfig getMasterConfig() {
        return masterconfig;
    }

    public void setMasterConfig(MasterConfig masterconfig) {
        this.masterconfig = masterconfig;
    }

}
