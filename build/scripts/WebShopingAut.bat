@rem
@rem Copyright 2015 the original author or authors.
@rem
@rem Licensed under the Apache License, Version 2.0 (the "License");
@rem you may not use this file except in compliance with the License.
@rem You may obtain a copy of the License at
@rem
@rem      https://www.apache.org/licenses/LICENSE-2.0
@rem
@rem Unless required by applicable law or agreed to in writing, software
@rem distributed under the License is distributed on an "AS IS" BASIS,
@rem WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@rem See the License for the specific language governing permissions and
@rem limitations under the License.
@rem

@if "%DEBUG%" == "" @echo off
@rem ##########################################################################
@rem
@rem  WebShopingAut startup script for Windows
@rem
@rem ##########################################################################

@rem Set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" setlocal

set DIRNAME=%~dp0
if "%DIRNAME%" == "" set DIRNAME=.
set APP_BASE_NAME=%~n0
set APP_HOME=%DIRNAME%..

@rem Resolve any "." and ".." in APP_HOME to make it shorter.
for %%i in ("%APP_HOME%") do set APP_HOME=%%~fi

@rem Add default JVM options here. You can also use JAVA_OPTS and WEB_SHOPING_AUT_OPTS to pass JVM options to this script.
set DEFAULT_JVM_OPTS=

@rem Find java.exe
if defined JAVA_HOME goto findJavaFromJavaHome

set JAVA_EXE=java.exe
%JAVA_EXE% -version >NUL 2>&1
if "%ERRORLEVEL%" == "0" goto execute

echo.
echo ERROR: JAVA_HOME is not set and no 'java' command could be found in your PATH.
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:findJavaFromJavaHome
set JAVA_HOME=%JAVA_HOME:"=%
set JAVA_EXE=%JAVA_HOME%/bin/java.exe

if exist "%JAVA_EXE%" goto execute

echo.
echo ERROR: JAVA_HOME is set to an invalid directory: %JAVA_HOME%
echo.
echo Please set the JAVA_HOME variable in your environment to match the
echo location of your Java installation.

goto fail

:execute
@rem Setup the command line

set CLASSPATH=%APP_HOME%\lib\WebShopingAut-1.0-SNAPSHOT.jar;%APP_HOME%\lib\serenity-ensure-3.2.5.jar;%APP_HOME%\lib\serenity-gradle-plugin-2.4.34.jar;%APP_HOME%\lib\serenity-screenplay-webdriver-3.2.5.jar;%APP_HOME%\lib\serenity-screenplay-3.2.5.jar;%APP_HOME%\lib\serenity-junit-3.2.5.jar;%APP_HOME%\lib\serenity-core-3.2.5.jar;%APP_HOME%\lib\serenity-reports-3.2.5.jar;%APP_HOME%\lib\serenity-stats-3.2.5.jar;%APP_HOME%\lib\serenity-reports-configuration-3.2.5.jar;%APP_HOME%\lib\serenity-model-3.2.5.jar;%APP_HOME%\lib\kotlin-stdlib-1.6.0.jar;%APP_HOME%\lib\assertj-core-3.22.0.jar;%APP_HOME%\lib\serenity-report-resources-3.2.5.jar;%APP_HOME%\lib\commons-text-1.9.jar;%APP_HOME%\lib\java-client-8.0.0.jar;%APP_HOME%\lib\webdrivermanager-5.1.0.jar;%APP_HOME%\lib\docker-java-3.2.13.jar;%APP_HOME%\lib\docker-java-core-3.2.13.jar;%APP_HOME%\lib\commons-lang3-3.12.0.jar;%APP_HOME%\lib\commons-io-2.11.0.jar;%APP_HOME%\lib\commons-validator-1.7.jar;%APP_HOME%\lib\commons-beanutils-1.9.4.jar;%APP_HOME%\lib\commons-net-3.8.0.jar;%APP_HOME%\lib\commons-collections-3.2.2.jar;%APP_HOME%\lib\docker-java-transport-httpclient5-3.2.13.jar;%APP_HOME%\lib\httpclient5-5.0.3.jar;%APP_HOME%\lib\commons-codec-1.15.jar;%APP_HOME%\lib\ngwebdriver-1.1.6.jar;%APP_HOME%\lib\selenium-java-4.1.4.jar;%APP_HOME%\lib\selenium-chrome-driver-4.1.4.jar;%APP_HOME%\lib\selenium-firefox-driver-4.1.4.jar;%APP_HOME%\lib\selenium-edge-driver-4.1.4.jar;%APP_HOME%\lib\jimfs-1.2.jar;%APP_HOME%\lib\selenium-devtools-v100-4.1.4.jar;%APP_HOME%\lib\selenium-devtools-v101-4.1.4.jar;%APP_HOME%\lib\selenium-devtools-v85-4.1.4.jar;%APP_HOME%\lib\selenium-devtools-v99-4.1.4.jar;%APP_HOME%\lib\selenium-safari-driver-4.1.4.jar;%APP_HOME%\lib\selenium-ie-driver-4.1.4.jar;%APP_HOME%\lib\selenium-opera-driver-4.1.4.jar;%APP_HOME%\lib\selenium-chromium-driver-4.1.4.jar;%APP_HOME%\lib\selenium-support-4.1.4.jar;%APP_HOME%\lib\selenium-remote-driver-4.1.4.jar;%APP_HOME%\lib\auto-service-1.0.1.jar;%APP_HOME%\lib\selenium-http-4.1.4.jar;%APP_HOME%\lib\auto-common-1.2.jar;%APP_HOME%\lib\guava-31.1-jre.jar;%APP_HOME%\lib\async-http-client-2.12.3.jar;%APP_HOME%\lib\jcl-over-slf4j-1.7.30.jar;%APP_HOME%\lib\async-http-client-netty-utils-2.12.3.jar;%APP_HOME%\lib\docker-java-api-3.2.13.jar;%APP_HOME%\lib\slf4j-api-1.7.36.jar;%APP_HOME%\lib\awaitility-4.2.0.jar;%APP_HOME%\lib\hamcrest-2.2.jar;%APP_HOME%\lib\guice-5.1.0.jar;%APP_HOME%\lib\jsoup-1.14.3.jar;%APP_HOME%\lib\xstream-1.4.19.jar;%APP_HOME%\lib\joda-time-2.8.2.jar;%APP_HOME%\lib\cucumber-java-7.2.3.jar;%APP_HOME%\lib\cucumber-core-7.2.3.jar;%APP_HOME%\lib\gson-2.9.0.jar;%APP_HOME%\lib\opencsv-2.0.jar;%APP_HOME%\lib\config-1.4.2.jar;%APP_HOME%\lib\imgscalr-lib-4.2.jar;%APP_HOME%\lib\freemarker-2.3.31.jar;%APP_HOME%\lib\classgraph-4.8.138.jar;%APP_HOME%\lib\jxl-2.6.12.jar;%APP_HOME%\lib\groovy-4.0.1.jar;%APP_HOME%\lib\mockito-core-3.3.3.jar;%APP_HOME%\lib\byte-buddy-1.12.9.jar;%APP_HOME%\lib\byte-buddy-agent-1.12.8.jar;%APP_HOME%\lib\objenesis-3.1.jar;%APP_HOME%\lib\junit-4.13.2.jar;%APP_HOME%\lib\annotations-13.0.jar;%APP_HOME%\lib\kotlin-stdlib-common-1.6.0.jar;%APP_HOME%\lib\flexmark-all-0.34.30.jar;%APP_HOME%\lib\flexmark-pdf-converter-0.34.30.jar;%APP_HOME%\lib\openhtmltopdf-pdfbox-0.0.1-RC13.jar;%APP_HOME%\lib\graphics2d-0.12.jar;%APP_HOME%\lib\pdfbox-2.0.8.jar;%APP_HOME%\lib\xmpbox-2.0.8.jar;%APP_HOME%\lib\fontbox-2.0.8.jar;%APP_HOME%\lib\commons-logging-1.2.jar;%APP_HOME%\lib\failureaccess-1.0.1.jar;%APP_HOME%\lib\listenablefuture-9999.0-empty-to-avoid-conflict-with-guava.jar;%APP_HOME%\lib\jsr305-3.0.2.jar;%APP_HOME%\lib\checker-qual-3.12.0.jar;%APP_HOME%\lib\error_prone_annotations-2.11.0.jar;%APP_HOME%\lib\j2objc-annotations-1.3.jar;%APP_HOME%\lib\javax.inject-1.jar;%APP_HOME%\lib\aopalliance-1.0.jar;%APP_HOME%\lib\mxparser-1.2.2.jar;%APP_HOME%\lib\cucumber-gherkin-messages-7.2.3.jar;%APP_HOME%\lib\cucumber-gherkin-7.2.3.jar;%APP_HOME%\lib\html-formatter-17.0.0.jar;%APP_HOME%\lib\messages-17.1.1.jar;%APP_HOME%\lib\tag-expressions-4.1.0.jar;%APP_HOME%\lib\cucumber-expressions-15.0.1.jar;%APP_HOME%\lib\datatable-7.2.3.jar;%APP_HOME%\lib\cucumber-plugin-7.2.3.jar;%APP_HOME%\lib\docstring-7.2.3.jar;%APP_HOME%\lib\ci-environment-8.1.0.jar;%APP_HOME%\lib\jackson-annotations-2.13.2.jar;%APP_HOME%\lib\jackson-databind-2.13.2.jar;%APP_HOME%\lib\jackson-core-2.13.2.jar;%APP_HOME%\lib\selenium-json-4.1.4.jar;%APP_HOME%\lib\selenium-api-4.1.4.jar;%APP_HOME%\lib\lombok-1.18.20.jar;%APP_HOME%\lib\fluentlenium-core-0.10.2.jar;%APP_HOME%\lib\filters-2.0.235.jar;%APP_HOME%\lib\jaxb-api-2.3.1.jar;%APP_HOME%\lib\jaxb-core-2.3.0.1.jar;%APP_HOME%\lib\jaxb-impl-2.3.3.jar;%APP_HOME%\lib\activation-1.1.1.jar;%APP_HOME%\lib\xmlpull-1.1.3.1.jar;%APP_HOME%\lib\txtmark-0.16.jar;%APP_HOME%\lib\auto-service-annotations-1.0.1.jar;%APP_HOME%\lib\aspectjweaver-1.9.8.jar;%APP_HOME%\lib\dec-0.1.2.jar;%APP_HOME%\lib\javax.activation-api-1.2.0.jar;%APP_HOME%\lib\jakarta.xml.bind-api-2.3.3.jar;%APP_HOME%\lib\jakarta.activation-1.2.2.jar;%APP_HOME%\lib\flexmark-profile-pegdown-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-abbreviation-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-admonition-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-anchorlink-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-aside-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-enumerated-reference-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-attributes-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-autolink-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-definition-0.34.30.jar;%APP_HOME%\lib\flexmark-html-parser-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-emoji-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-escaped-character-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-footnotes-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-gfm-issues-0.34.30.jar;%APP_HOME%\lib\flexmark-jira-converter-0.34.30.jar;%APP_HOME%\lib\flexmark-youtrack-converter-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-gfm-strikethrough-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-gfm-tables-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-gfm-tasklist-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-gfm-users-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-gitlab-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-jekyll-front-matter-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-jekyll-tag-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-media-tags-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-ins-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-xwiki-macros-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-superscript-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-tables-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-toc-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-typographic-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-wikilink-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-yaml-front-matter-0.34.30.jar;%APP_HOME%\lib\flexmark-ext-youtube-embedded-0.34.30.jar;%APP_HOME%\lib\flexmark-formatter-0.34.30.jar;%APP_HOME%\lib\flexmark-0.34.30.jar;%APP_HOME%\lib\flexmark-test-util-0.34.30.jar;%APP_HOME%\lib\flexmark-util-0.34.30.jar;%APP_HOME%\lib\jcommander-1.82.jar;%APP_HOME%\lib\netty-transport-native-epoll-4.1.76.Final.jar;%APP_HOME%\lib\netty-transport-classes-epoll-4.1.76.Final.jar;%APP_HOME%\lib\netty-transport-native-kqueue-4.1.76.Final.jar;%APP_HOME%\lib\netty-transport-classes-kqueue-4.1.76.Final.jar;%APP_HOME%\lib\netty-transport-native-unix-common-4.1.76.Final.jar;%APP_HOME%\lib\netty-handler-proxy-4.1.60.Final.jar;%APP_HOME%\lib\netty-codec-http-4.1.76.Final.jar;%APP_HOME%\lib\netty-codec-socks-4.1.60.Final.jar;%APP_HOME%\lib\netty-reactive-streams-2.0.4.jar;%APP_HOME%\lib\netty-handler-4.1.76.Final.jar;%APP_HOME%\lib\netty-codec-4.1.76.Final.jar;%APP_HOME%\lib\netty-transport-4.1.76.Final.jar;%APP_HOME%\lib\netty-buffer-4.1.76.Final.jar;%APP_HOME%\lib\netty-resolver-4.1.76.Final.jar;%APP_HOME%\lib\netty-common-4.1.76.Final.jar;%APP_HOME%\lib\opentelemetry-exporter-logging-1.13.0.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-1.13.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-extension-autoconfigure-spi-1.13.0.jar;%APP_HOME%\lib\opentelemetry-sdk-1.13.0.jar;%APP_HOME%\lib\opentelemetry-sdk-trace-1.13.0.jar;%APP_HOME%\lib\opentelemetry-sdk-metrics-1.13.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-logs-1.13.0-alpha.jar;%APP_HOME%\lib\opentelemetry-sdk-common-1.13.0.jar;%APP_HOME%\lib\opentelemetry-semconv-1.13.0-alpha.jar;%APP_HOME%\lib\opentelemetry-api-1.13.0.jar;%APP_HOME%\lib\opentelemetry-context-1.13.0.jar;%APP_HOME%\lib\jtoml-2.0.0.jar;%APP_HOME%\lib\commons-exec-1.3.jar;%APP_HOME%\lib\commons-digester-2.1.jar;%APP_HOME%\lib\docker-java-transport-3.2.13.jar;%APP_HOME%\lib\jna-5.8.0.jar;%APP_HOME%\lib\autolink-0.6.0.jar;%APP_HOME%\lib\openhtmltopdf-rtl-support-0.0.1-RC13.jar;%APP_HOME%\lib\openhtmltopdf-core-0.0.1-RC13.jar;%APP_HOME%\lib\openhtmltopdf-jsoup-dom-converter-0.0.1-RC13.jar;%APP_HOME%\lib\reactive-streams-1.0.3.jar;%APP_HOME%\lib\failsafe-3.2.3.jar;%APP_HOME%\lib\commons-compress-1.21.jar;%APP_HOME%\lib\bcpkix-jdk15on-1.64.jar;%APP_HOME%\lib\httpcore5-5.0.2.jar;%APP_HOME%\lib\icu4j-59.1.jar;%APP_HOME%\lib\bcprov-jdk15on-1.64.jar


@rem Execute WebShopingAut
"%JAVA_EXE%" %DEFAULT_JVM_OPTS% %JAVA_OPTS% %WEB_SHOPING_AUT_OPTS%  -classpath "%CLASSPATH%"  %*

:end
@rem End local scope for the variables with windows NT shell
if "%ERRORLEVEL%"=="0" goto mainEnd

:fail
rem Set variable WEB_SHOPING_AUT_EXIT_CONSOLE if you need the _script_ return code instead of
rem the _cmd.exe /c_ return code!
if  not "" == "%WEB_SHOPING_AUT_EXIT_CONSOLE%" exit 1
exit /b 1

:mainEnd
if "%OS%"=="Windows_NT" endlocal

:omega
