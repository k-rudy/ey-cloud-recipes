
execute "monit-start-dd" do
 user "deploy"
 command "monit start datadog_wrapper"
 only_if " pgrep 'datadog_wrapper' < /dev/null"
end
