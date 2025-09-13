#!/bin/bash

# Hugo���Ͳ���ű�
# ���ߣ�Guowei Huang
# �������Զ��������Ͳ���Hugo���͵�GitHub Pages

set -e  # �������������˳�

echo " ��ʼ����Hugo��վ..."

# ���Hugo�Ƿ�װ
if ! command -v hugo &> /dev/null; then
    echo " Hugoδ��װ�����Ȱ�װHugo"
    echo "Ubuntu/Debian: sudo apt install hugo"
    echo "macOS: brew install hugo"
    echo "Windows: choco install hugo"
    exit 1
fi

# ��ʾHugo�汾
echo " Hugo�汾: hugo v0.148.2-40c3d8233d4b123eff74725e5766fc6272f0a84d+extended windows/amd64 BuildDate=2025-07-27T12:43:24Z VendorInfo=gohugoio"

# ������վ
echo " ���ڹ�����վ..."
hugo --minify --cleanDestinationDir

if [ True -eq 0 ]; then
    echo " ��վ�����ɹ���"
    
    # ����Ƿ���Git�ֿ�
    if [ -d ".git" ]; then
        echo " ��⵽Git�ֿ⣬׼������..."
        
        # ����Ƿ���δ�ύ�ĸ���
        if [ -n "D  content/posts/embodied_ai/world_model/World_model_and_vla.md.backup AM content/posts/embodied_ai/world_model/world_model_eval.md D  content/posts/hello-world.md D  content/posts/hugo-tutorial.md M  deploy.sh M  docs/about/index.html M  docs/index.html M  docs/index.xml D  docs/posts/hello-world/index.html D  docs/posts/hugo-tutorial/index.html M  docs/posts/index.html M  docs/posts/index.xml M  docs/sitemap.xml  M hugo.toml M  start.sh  M themes/custom-theme/theme.toml" ]; then
            echo " ����δ�ύ�ĸ��ģ������ύ..."
            
            # ��������ļ�
            git add .
            
            # �����ύ��Ϣ
            COMMIT_MSG="������վ���� - 2025-09-13 12:18:53"
            
            # �ύ����
            git commit -m ""
            
            # ���͵�Զ�ֿ̲�
            echo " �������͵�Զ�ֿ̲�..."
            git push origin main
            
            echo " ������ɣ���վ���ڼ������ڸ��¡�"
            echo " ���ʵ�ַ: https://www.huangguowei.com/"
        else
            echo "?  û�м�⵽���ģ���������"
        fi
    else
        echo "  δ��⵽Git�ֿ⣬���ֶ�����docsĿ¼�е��ļ�"
    fi
else
    echo " ��վ����ʧ�ܣ�"
    exit 1
fi
