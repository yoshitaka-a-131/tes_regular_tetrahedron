#!/bin/bash
cd
git clone https://github.com/yoshitaka-a-131/tes_regular_tetrahedron.git /home/ubuntu/ros2_ws/src/choreonoid/ext/tes_regular_tetrahedron
cd /home/ubuntu/ros2_ws/src/choreonoid/ext/tes_regular_tetrahedron
git pull
cd
sudo cp -r /home/ubuntu/ros2_ws/src/choreonoid/ext/tes_regular_tetrahedron/choreonoid_ros2_tesrt_sample /home/ubuntu/ros2_ws/src
cd /home/ubuntu/ros2_ws
colcon build --symlink-install --cmake-args -DBUILD_AGX_DYNAMICS_PLUGIN=ON -DBUILD_AGX_BODYEXTENSION_PLUGIN=ON -DBUILD_WRS2018=ON -DBUILD_SCENE_EFFECTS_PLUGIN=ON -DBUILD_HAIRO_WORLD_PLUGIN=ON -DENABLE_INSTALL_RPATH_USE_LINK_PATH=ON

sudo cp /home/ubuntu/ros2_ws/src/choreonoid/ext/tes_regular_tetrahedron/desktop/TES_RT_AizuSpider_1.5m.desktop /home/ubuntu/デスクトップ/TES_RT_AizuSpider_1.5m.desktop
gio set /home/ubuntu/デスクトップ/TES_RT_AizuSpider_1.5m.desktop metadata::trusted true
sudo chmod +x /home/ubuntu/デスクトップ/TES_RT_AizuSpider_1.5m.desktop

sudo cp /home/ubuntu/ros2_ws/src/choreonoid/ext/tes_regular_tetrahedron/desktop/TES_RT_AizuSpider_2.0m.desktop /home/ubuntu/デスクトップ/TES_RT_AizuSpider_2.0m.desktop
gio set /home/ubuntu/デスクトップ/TES_RT_AizuSpider_2.0m.desktop metadata::trusted true
sudo chmod +x /home/ubuntu/デスクトップ/TES_RT_AizuSpider_2.0m.desktop

sudo cp /home/ubuntu/ros2_ws/src/choreonoid/ext/tes_regular_tetrahedron/desktop/TES_RT_HobbyDrone.desktop /home/ubuntu/デスクトップ/TES_RT_HobbyDrone.desktop
gio set /home/ubuntu/デスクトップ/TES_RT_HobbyDrone.desktop metadata::trusted true
sudo chmod +x /home/ubuntu/デスクトップ/TES_RT_HobbyDrone.desktop

