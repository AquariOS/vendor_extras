# Copyright (C) 2017 Unlegacy-Android
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# -----------------------------------------------------------------
# Bacon update package

#
# Build system colors
#
# PFX: Prefix "target C++:" in yellow
# INS: Module "Install:" output color (cyan for ics)
ifneq ($(BUILD_WITH_COLORS),0)
    include $(TOP_DIR)vendor/extras/build/core/colors.mk
endif

ifeq ($(TARGET_BACON_NAME),)
    INTERNAL_BACON_NAME := $(TARGET_PRODUCT)-$(PLATFORM_VERSION)-$(shell date -u +%Y%m%d)
else
    INTERNAL_BACON_NAME := $(TARGET_BACON_NAME)
endif

INTERNAL_BACON_TARGET := $(PRODUCT_OUT)/$(INTERNAL_BACON_NAME).zip

.PHONY: bacon aquarios otapackage
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(INTERNAL_BACON_TARGET)
	$(hide) $(MD5SUM) $(INTERNAL_BACON_TARGET) | sed "s|$(PRODUCT_OUT)/||" > $(INTERNAL_BACON_TARGET).md5sum
	#@echo "Package Complete: $(INTERNAL_BACON_TARGET)" >&2

	@echo -e ""
	@echo -e ""
	@echo -e ""
	@echo -e ${5fffff}"	                                   oo                          "${CL_RST}
	@echo -e ${5fffff}"	                                oooo                           "${CL_RST}
	@echo -e ${5fffff}"	                          oooooooooooo                         "${CL_RST}
	@echo -e ${5fffff}"	                          oooooooooooooooooo                   "${CL_RST}
	@echo -e ${5fffff}"	                      oooooooooooooooooooooo                   "${CL_RST}
	@echo -e ${5fffff}"	                      ooooooooooooooooooooooo                  "${CL_RST}
	@echo -e ${5fffd7}"	                     oooooooooooooooooooooooo                  "${CL_RST}
	@echo -e ${5fffd7}"	                   ooooooooooooooooooooooooooo                 "${CL_RST}
	@echo -e ${5fffd7}"	                      ooooooooooooooooooooooooo                "${CL_RST}
	@echo -e ${5fffd7}"	                    ooooooooooooooooooooooooooooo              "${CL_RST}
	@echo -e ${00d7d7}"	                   oooooooooooooooooooooooooooooooo            "${CL_RST}
	@echo -e ${00d7d7}"	                 oooooooooooooooooo ooooooooooooooooo          "${CL_RST}
	@echo -e ${00d7d7}"	                 ooooooooooooooooooo  ooo  oooooooooooo        "${CL_RST}
	@echo -e ${00d7d7}"	                 oooooooooooooooooooooo          ooooo         "${CL_RST}
	@echo -e ${00d7d7}"	                 ooooooooooooooooooooooooo                     "${CL_RST}
	@echo -e ${00d7d7}"	                  ooooooooooooooooooooooooooo                  "${CL_RST}
	@echo -e ${00d7d7}"	                   oooooooooooooooooooooooooooo                "${CL_RST}
	@echo -e ${00d7d7}"	                    oooooooooooooooooooooooooooo               "${CL_RST}
	@echo -e ${5fd7d7}"	                   o  ooooooooooooooooooooooooooo              "${CL_RST}
	@echo -e ${5fd7d7}"	         oo      oooo   oooooooooooooooooooooooooo             "${CL_RST}
	@echo -e ${5fd7d7}"	          ooooooooooo   oooooooooooooooooooooooooo             "${CL_RST}
	@echo -e ${5fd7d7}"	           ooooooooooooooooooooooooooooooooooooooo             "${CL_RST}
	@echo -e ${5fd7d7}"	           oooooooooooooooooooooooooooooooooooooo              "${CL_RST}
	@echo -e ${5fafaf}"	       ooooooooooooooooooooooooooooooooooooooooo               "${CL_RST}
	@echo -e ${5fafaf}"	           oooooooooooooooooooooooooooooooooooo                "${CL_RST}
	@echo -e ${5fafaf}"	          ooooooooooooooooooooooooooooooooooo                  "${CL_RST}
	@echo -e ${5fafaf}"	       ooooooooooooooooooooooooooooooooooo                     "${CL_RST}
	@echo -e ${5f87af}"	            ooooooooooooooooooooooooooo                        "${CL_RST}
	@echo -e ${5f87af}"	          oooooooooooooooooooooooooo                           "${CL_RST}
	@echo -e ${5f87af}"	                 ooooooooooooooo                               "${CL_RST}
	@echo -e ${5f87af}"	                ooooooooooooooo                                "${CL_RST}
	@echo -e ${5f87af}"	                oooooooooooooo                                 "${CL_RST}
	@echo -e ${0087af}"	                oooooooooooooo         ooooooooo               "${CL_RST}
	@echo -e ${0087af}"	                oooooooooooooo       ooooooooooooo             "${CL_RST}
	@echo -e ${0087af}"	                ooooooooooooooo     ooooo  ooooooo             "${CL_RST}
	@echo -e ${0087af}"	                 oooooooooooooo     ooo      oooooo            "${CL_RST}
	@echo -e ${0087af}"	                  oooooooooooooo    oo       oooooo            "${CL_RST}
	@echo -e ${0087af}"	                    ooooooooooooooo  o     ooooooo             "${CL_RST}
	@echo -e ${0087af}"	                     oooooooooooooooooooooooooooo              "${CL_RST}
	@echo -e ${005f87}"	                        oooooooooooooooooooooooo               "${CL_RST}
	@echo -e ${005f87}"	                           oooooooooooooooooooo                "${CL_RST}
	@echo -e ${005f87}"	                                ooooooooooo                    "${CL_RST}
	@echo -e " "
	@echo -e " "${CL_RST}
	@echo -e ${ff875f}"			  Welcome to the age of AquariOS"${CL_RST}
	@echo -e " "
	@echo -e ${CL_BWT}"Package Complete: $(AQUARIOS_TARGET_PACKAGE)"${CL_RST}
	@echo -e "SIZE:"${CL_CYN}" `ls -la --si $(AQUARIOS_TARGET_PACKAGE) | cut -d ' ' -f 5`"${CL_RST}

bacon: aquarios
