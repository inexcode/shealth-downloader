# Samsung Health Data Downloader

Right now this is a proof of concept. More documentation coming soon.

## Disclaimer

Using this utility is probably against Samsung Health's terms of service. I'm not responsible for any consequences of using this utility.

I also don't even know or care if it is against the ToS. I believe that my biometric data belongs to me, and I have full rights to do whatever I want to do with it. Samsung doesn't provide proper APIs to access the data. The data exported to Health Connect is very basic and lacks a lot of collected data types. The data from sensors requires you to be a "Samsung partner". GDPR exports might not even work for you if you don't use Samsung Internet Browser and it is a painful method if you want to programatically work with your latest biometric data.

Thus, f**k you, Samsung. Give us a proper API to access everything.

## Supported data models

### Pedometer

- [ ] step_count
- [ ] step_daily_trend
- [ ] tracker.pedometer_day_summary
- [ ] tracker.pedometer_event (empty for me)
- [ ] floors_climbed
- [ ] floor_goal (empty for me)
- [ ] tracker.pedometer_recommendation (empty for me)

### User profile and settings

- [ ] user_profile
- [ ] device_profile
- [ ] preferences

### Activity

- [ ] activity.day_summary
- [ ] activity.goal (empty for me)
- [ ] goal_history (empty for me)
- [ ] active_calories.goal (empty for me)
- [ ] activity.daily_goal (empty for me)
- [ ] activity_level
- [ ] caloric_balance_goal (empty for me)
- [ ] daily_activity.goal (empty for me)
- [ ] dynamic_active_time.goal (empty for me)
- [ ] goal (empty for me)
- [ ] goal_type (empty for me)
- [ ] move_hourly.goal (empty for me)

### Excercise

- [ ] exercise
- [ ] exercise.challenge (empty for me)
- [ ] exercise.challenge.history (empty for me)
- [ ] exercise.extension (empty for me)
- [ ] exercise.custom_exercise (empty for me)
- [ ] exercise.hr_zone (empty for me)
- [ ] exercise.hr_zone.settings (empty for me)
- [ ] exercise.max_heart_rate
- [ ] exercise.pacesetter (empty for me)
- [ ] exercise.program (empty for me)
- [ ] exercise.photo (empty for me)
- [ ] exercise.program_schedule (empty for me)
- [ ] exercise.recovery_heart_rate
- [ ] exercise.route (empty for me)
- [ ] exercise.routine (empty for me)
- [ ] exercise.program_summary (empty for me)
- [ ] exercise.weather (empty for me)
- [ ] exercise_calorie.goal (empty for me)
- [ ] exercise_time.goal (empty for me)

### Nutrition

- [ ] food_info
- [ ] nutrition
- [ ] calories_burned
- [ ] food_intake
- [ ] caffeine_intake (deprecated by Samsung)
- [ ] water_intake
- [ ] food_favorite
- [ ] food_frequent
- [ ] food_goal
- [ ] food_image (empty for me)

### Social elements

Probably won't be supported as I have this feature disabled.

- [ ] rewards
- [ ] badge
- [ ] best_records

### Temperature

- [ ] ambient_temperature (empty for me)
- [ ] body_temperature (empty for me)
- [ ] skin_temperature
- [ ] uv_exposure (empty for me)

### Heart

- [ ] heart_rate
- [ ] alerted_heart_rate
- [ ] blood_pressure (empty for me)
- [ ] hrv (Heart Rate Variability) (empty for me)
- [ ] oxygen_saturation
- [ ] electrocardiogram (empty for me)

### Blood components

- [ ] blood_glucose (empty for me)
- [ ] hba1c (Hemoglobin A1c) (empty for me)
- [ ] advanced_glycation_endproduct.raw (empty for me)

### Body composition

- [ ] body_fat (deprecated by Samsung)
- [ ] body_muscle (deprecated by Samsung)
- [ ] height
- [ ] weight (contains body fat, muscle, etc)
- [ ] body_composition_goal

### Sleep

- [ ] sleep
- [ ] sleep_stage
- [ ] program.sleep_coaching.mission
- [ ] program.sleep_coaching.session
- [ ] sleep_combined
- [ ] sleep_data (empty for me)
- [ ] sleep_goal
- [ ] sleep_snoring (empty for me)

### Stress

- [x] stress
- [ ] stress.base_histogram (seems to be deprecated)
- [ ] stress.histogram

### Breathing

- [ ] breathing (empty for me)

### Medication

Unavailable in my country so I won't even bother for now.

- [ ] medication
- [ ] medication.log
- [ ] medication.schedule

### Mindfulness

I don't use it.

- [ ] mindfulness.favorites
- [ ] mindfulness.history

### Uncategorized

- [ ] health_document (empty for me)
- [ ] movement (empty for me)
- [ ] respiratory_rate (empty for me)
- [ ] hsp.references
  - I don't quite understand this one. It maps IDs to other type entries to some HSP id. The document in data export explains it as "HDA references".
  - data_type values:
    - 10001 Excercise
    - 10002 Sleep
    - 10004 Heart rate
    - 10007 Oxygen Saturation
    - 10008 Weight
    - 10011 Nutrition
- [ ] permission (empty for me)
- [ ] report
- [ ] stand_day_summary (empty for me)
- [ ] vitality_score (empty for me)
