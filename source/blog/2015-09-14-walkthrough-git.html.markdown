---
title: Walkthrough Git
date: 2015-09-14 16:11 UTC
tags: Git, Terminal
---

<div class="post-content"><pre class="cell code-cell"><code class="bash hljs"><span class="hljs-comment"># Terminal commands</span>

<span class="hljs-built_in">pwd</span> <span class="hljs-comment"># Print Working Directory</span>

ls <span class="hljs-comment"># See files/directories of the currently active folder</span>
[<span class="hljs-operator">-l</span>] <span class="hljs-comment"># See as list</span>
[<span class="hljs-operator">-a</span>] <span class="hljs-comment"># Display invisible files</span>
ls -al <span class="hljs-comment"># Use multiple "methods"</span>

man [ls] <span class="hljs-comment"># See help about ls</span>

<span class="hljs-built_in">cd</span> <span class="hljs-comment"># Change directory</span>
<span class="hljs-built_in">cd</span> code <span class="hljs-comment"># Go to "Code" directory</span>
<span class="hljs-built_in">cd</span> co + <span class="hljs-string">"TAB"</span> <span class="hljs-comment"># Autocomplete with the rest of the directory's name</span>
<span class="hljs-built_in">cd</span> .. <span class="hljs-comment"># Go UP one folder</span>

mkdir directory_name <span class="hljs-comment"># Make directory</span>
touch file_name <span class="hljs-comment"># Make file</span>

rm file_name <span class="hljs-comment"># Delete file</span>
rm directory_name <span class="hljs-comment"># Delete directory</span>

stt <span class="hljs-comment"># Open directory in Sublime Text</span>
st file_name <span class="hljs-comment"># Open "file_name" in Sublime Text</span></code>
</pre><pre class="cell code-cell"><code class="bash hljs"><span class="hljs-comment"># Git commands</span>

<span class="hljs-comment"># Existing repository</span>
git <span class="hljs-built_in">clone</span> &lt;github_ssh_<span class="hljs-built_in">clone</span>_url&gt; <span class="hljs-comment"># To the right of a repository's main page on Github</span>

<span class="hljs-comment"># Ex-nihilo</span>
git init <span class="hljs-comment"># Initiate project in the current directory</span>
git status <span class="hljs-comment"># See what files/folders have been modified or not taken into account yet</span>
git add file_name <span class="hljs-comment"># Add the file</span>
git commit --message <span class="hljs-string">"Reason for this commit"</span> <span class="hljs-comment"># Save the project's status</span>
git diff file_to_compare_to <span class="hljs-comment"># Show differences between two files</span>
git <span class="hljs-built_in">log</span> <span class="hljs-comment"># See history of commits</span>
git lg <span class="hljs-comment"># Same same but different</span>
git rm -rf .git <span class="hljs-comment"># Delete git project</span>

<span class="hljs-comment"># Download</span>
git pull upstream <span class="hljs-comment"># Get code our "clone" originated from</span>

<span class="hljs-comment"># Upload</span>
git push &lt;remote&gt; &lt;branch&gt;

git push origin master

<span class="hljs-comment"># Example!</span>
➜  <span class="hljs-number">02</span>-Buddies git:(master) git remote -v
origin  git@github.com:coisnepe/fullstack-challenges.git (fetch)   <span class="hljs-comment"># Fetch from my own repository on Github</span>
origin  git@github.com:coisnepe/fullstack-challenges.git (push)  <span class="hljs-comment"># Push local changes to my repository on Github</span>
upstream    git@github.com:lewagon/fullstack-challenges.git (fetch) <span class="hljs-comment"># Original repository</span>
upstream    git@github.com:lewagon/fullstack-challenges.git (push)

</code>
</pre><div class="cell markdown-cell"><h3 style="text-align:center"><a href="http://www.ndpsoftware.com/git-cheatsheet.html">—&gt; Link to Interactive Git Cheatsheet &lt;---</a></h3></div><h1>Using git remotely and locally…</h1><h3>These two images are the best compromises I could find between clarity and exhaustivity:</h3><p><img src="http://assets.osteele.com/images/2008/git-transport.png" alt="" width="100%" height="" border="0" scale="0"><br><br><br> <img src="http://jlord.us/git-it/assets/imgs/clone.png" alt="" width="100%" height="" border="0" scale="0"></p></div>
