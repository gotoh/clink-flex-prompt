-- flexprompt.settings.left_prompt = "{cwd}{git}{hg:dirty=vcs_dirty}{python}"
-- flexprompt.settings.left_prompt = "{cwd}{git:c=vcs_dirty}{hg:dirty=vcs_dirty}"
flexprompt.settings.codepages[932] = {"SJIS", "yellow"}
flexprompt.settings.codepages[65001] = {"UTF-8", "magenta"}
--flexprompt.settings.left_prompt = "{cwd}{scm:nountracked}"
flexprompt.settings.left_prompt = "{cwd}{scm}"
flexprompt.settings.right_prompt = "{title}{exit}{duration}{battery}{cp}{time:format=%H:%M:%S}"

flexprompt.settings.symbols =
{
    prompt =
    {
        os.getenv("COMPUTERNAME").."$",
        winterminal = ">",
    },
}
