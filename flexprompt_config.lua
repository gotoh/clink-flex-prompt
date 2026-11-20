-- flexprompt.settings.left_prompt = "{cwd}{git}{hg:dirty=vcs_dirty}{python}"
-- flexprompt.settings.left_prompt = "{cwd}{git:c=vcs_dirty}{hg:dirty=vcs_dirty}"
flexprompt.settings.codepages[932] = {"SJIS", "yellow"}
flexprompt.settings.codepages[65001] = {"UTF-8", "magenta"}
--flexprompt.settings.left_prompt = "{cwd}{scm:nountracked}"
flexprompt.settings.left_prompt = "{cwd}{scm}{python}"
flexprompt.settings.right_prompt = "{title}{exit}{duration}{battery}{vsenv}{cp}{time:format=%H:%M:%S}"

flexprompt.settings.symbols =
{
    prompt =
    {
        os.getenv("COMPUTERNAME").."$",
        winterminal = os.getenv("COMPUTERNAME")..">",
    },
}
