-- Update Doctor table to add availability fields and remove assistant fields
-- Add new availability columns
ALTER TABLE pulseiq.doctors ADD COLUMN available_days VARCHAR(200);
ALTER TABLE pulseiq.doctors ADD COLUMN available_time_start VARCHAR(10);
ALTER TABLE pulseiq.doctors ADD COLUMN available_time_end VARCHAR(10);

-- Remove assistant columns as they are not used
ALTER TABLE pulseiq.doctors DROP COLUMN IF EXISTS assistant_name;
ALTER TABLE pulseiq.doctors DROP COLUMN IF EXISTS assistant_number;

-- Set default availability for existing doctors (Monday to Friday, 9 AM to 5 PM)
UPDATE pulseiq.doctors 
SET available_days = 'MONDAY,TUESDAY,WEDNESDAY,THURSDAY,FRIDAY',
    available_time_start = '09:00',
    available_time_end = '17:00'
WHERE available_days IS NULL;
