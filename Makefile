

built-centos_73_rpm_builder: Dockerfile-73rpmbuilder
	docker build -f Dockerfile-73rpmbuilder -t centos:7.3.1611-rpmBuilder01 .
	touch built-centos_73_rpm_builder

pushed-centos_73_rpm_builder: built-centos_73_rpm_builder
	docker tag centos:7.3.1611-rpmBuilder01 pmdumuid/centos-rpm-builder:7.3.1611-rpmBuilder01
	docker push pmdumuid/centos-rpm-builder:7.3.1611-rpmBuilder01
	touch pushed-centos_73_rpm_builder
