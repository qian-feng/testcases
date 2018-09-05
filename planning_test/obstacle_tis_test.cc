/******************************************************************************
 * Copyright 2017 The Apollo Authors. All Rights Reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *****************************************************************************/

/**
 * @file
 **/

#include <memory>
#include <unordered_map>
#include <vector>

//#include "gtest/gtest.h"

#include "modules/perception/proto/perception_obstacle.pb.h"
#include "modules/prediction/proto/prediction_obstacle.pb.h"

#include "modules/common/util/file.h"
#include "modules/common/util/util.h"
#include "modules/planning/common/obstacle.h"
//#include "modules/planning/common/planning_gflags.h"
#include "modules/planning/common/lag_prediction.h"

//#include "modules/common/adapters/adapter_manager.h"
//using apollo::perception::PerceptionObstacle;

void createObstacle(apollo::prediction::PredictionObstacles *pobstacles){
    //const ::google::protobuf::RepeatedPtrField< ::apollo::prediction::PredictionObstacle > t = pobstacles->mutable_prediction_obstacle();
    apollo::prediction::PredictionObstacle *prediction_obstacle = pobstacles->add_prediction_obstacle();
    pobstacles->mutable_header()->set_timestamp_sec(1505249480.05675);
    pobstacles->mutable_header()->set_module_name("prediction");
    auto *perception_obstacle = prediction_obstacle->mutable_perception_obstacle();
    //apollo::perception::PerceptionObstacle perception_obstacle;
    //apollo::planning::IndexedObstacles indexed_obstacles_;
    perception_obstacle->mutable_velocity()->set_x(2.5);
    perception_obstacle->mutable_velocity()->set_y(0.5);
    perception_obstacle->set_type(apollo::perception::PerceptionObstacle::UNKNOWN);
    perception_obstacle->set_type(apollo::perception::PerceptionObstacle::UNKNOWN_UNMOVABLE);
    perception_obstacle->set_type(apollo::perception::PerceptionObstacle::UNKNOWN_MOVABLE);
    perception_obstacle->set_type(apollo::perception::PerceptionObstacle::PEDESTRIAN);
    perception_obstacle->set_type(apollo::perception::PerceptionObstacle::BICYCLE);
    perception_obstacle->set_type(apollo::perception::PerceptionObstacle::VEHICLE);
    perception_obstacle->mutable_velocity()->set_x(0.5);
    perception_obstacle->mutable_velocity()->set_y(0.5);
    //prediction_obstacle->set_allocated_perception_obstacle(perception_obstacle);
    //boost::make_shared<apollo::prediction::PredictionObstacles const>(*pobstacles);
    //apollo::prediction::PredictionObstacles p(*pobstacles);
    //apollo::prediction::PredictionObstacle r(pobstacles->);

    // auto obstacles = Obstacle::CreateObstacles(prediction_obstacles);
    // for (auto& obstacle : obstacles) {
    //     const auto id = obstacle->Id();
    //     indexed_obstacles_.Add(id, *obstacle);
    // }
    // apollo::planning::LagPrediction::AddObstacleToPrediction(
}


int main(void){
    apollo::prediction::PredictionObstacles prediction_obstacles;
    //apollo::perception::PerceptionObstacle perception_obstacle;
    apollo::planning::LagPrediction lag(1, 1);
    // apollo::common::adapter::AdapterManagerConfig amd;
    // apollo::common::adapter::AdapterConfig *config = amd.add_config();
    // config->set_type(apollo::common::adapter::AdapterConfig_MessageType_PREDICTION);
    // config->set_mode(apollo::common::adapter::AdapterConfig_Mode_PUBLISH_ONLY);
    // config->set_message_history_limit(10);
    // amd.set_is_ros(false);
    createObstacle(&prediction_obstacles);
    // apollo::common::adapter::AdapterManager::Init(amd);
    // ///prediction_obstacles.prediction_obstacle();
    // apollo::common::adapter::AdapterManager::FeedPredictionData(prediction_obstacles);
    // apollo::common::adapter::AdapterManager::Observe();
    // std::cout<< apollo::common::adapter::AdapterManager::GetPrediction()->Empty()<< std::endl;
    //apollo::common::adapter::AdapterManager::FeedPredictionFile(&prediction_obstacles);
    //prediction_obstacles.mutable_prediction_obstacle();
    //std::cout<< prediction_obstacles.has_header()<<std::endl;
    //std::cout<< prediction_obstacles.mutable_prediction_obstacle()->
    //prediction_obstacles.clear_prediction_obstacle();
    lag.GetLaggedPrediction(&prediction_obstacles);
}
