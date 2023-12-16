CREATE OR REPLACE FUNCTION music_file_delete_trigger()
RETURNS TRIGGER AS $function$
BEGIN
  INSERT INTO deleted_music_files (mf_id, path)
  VALUES (OLD.mf_id, OLD.path);
  RETURN OLD;
END;
$function$ LANGUAGE plpgsql;

CREATE TRIGGER music_file_deleted
AFTER DELETE ON music_files
FOR EACH ROW
EXECUTE FUNCTION music_file_delete_trigger();
