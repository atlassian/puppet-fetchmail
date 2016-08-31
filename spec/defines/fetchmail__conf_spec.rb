require "spec_helper"

describe "fetchmail::conf" do
  let (:title) { "myuserexample" }
  let (:params) do
    {
      :mail_server => "imap.gmail.com",
      :mail_user => "myemailuser",
      :mail_user_passwd => "myemailuserpassword",
      :procmail_rc => "~/.procmailrc",
    }
  end
  it { should compile }
  it { should contain_file("/home/myuserexample/.fetchmailrc").with_content(/poll imap.gmail.com with proto IMAP/) }
end
