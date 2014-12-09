echo -e "\nSetting up the server.\n"

sws_dir="sws"

# If the repository exists, do a pull
# Otherwise, do a git clone
if cd $sws_dir; then 
	echo "Directory already exists"
	echo "Updating Repo" 
	git pull
else 
	if [ ! -e "/etc/apache2/sites-available/sws.conf" ];
	    then

	    # PRC Revise Host Here
	    echo "Setting up sws.conf"
	    sudo cp /vagrant/SWSFiles/sws.conf /etc/apache2/sites-available
	    sudo a2ensite sws
	    sudo service apache2 reload
	fi	
	# This would be the place to do a git clone
	git clone https://github.com/ejaxon/Visual-Town-Budget.git
fi


echo -e "\nFinished\n"