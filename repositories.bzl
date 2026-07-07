load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def bazel_sonarqube_repositories(
        sonar_scanner_cli_version = "8.1.0.6389",
        sonar_scanner_cli_sha256 = "ab76ab3c360025e9108be5b55be066f304a164f8b2850d2f2f333915db51bc1b"):

    http_archive(
        name = "org_sonarsource_scanner_cli_sonar_scanner_cli",
        build_file = "@bazel_sonarqube//:BUILD.sonar_scanner",
        sha256 = sonar_scanner_cli_sha256,
        strip_prefix = "sonar-scanner-" + sonar_scanner_cli_version,
        urls = [
            "https://repo1.maven.org/maven2/org/sonarsource/scanner/cli/sonar-scanner-cli/%s/sonar-scanner-cli-%s.zip" % (sonar_scanner_cli_version, sonar_scanner_cli_version),
            "https://jcenter.bintray.com/org/sonarsource/scanner/cli/sonar-scanner-cli/%s/sonar-scanner-cli-%s.zip" % (sonar_scanner_cli_version, sonar_scanner_cli_version),
        ],
    )
