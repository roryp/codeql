// Generated automatically from software.amazon.awssdk.services.s3.model.Event for testing purposes

package software.amazon.awssdk.services.s3.model;

import java.util.Set;

public enum Event
{
    S3_INTELLIGENT_TIERING, S3_LIFECYCLE_EXPIRATION, S3_LIFECYCLE_EXPIRATION_DELETE, S3_LIFECYCLE_EXPIRATION_DELETE_MARKER_CREATED, S3_LIFECYCLE_TRANSITION, S3_OBJECT_ACL_PUT, S3_OBJECT_CREATED, S3_OBJECT_CREATED_COMPLETE_MULTIPART_UPLOAD, S3_OBJECT_CREATED_COPY, S3_OBJECT_CREATED_POST, S3_OBJECT_CREATED_PUT, S3_OBJECT_REMOVED, S3_OBJECT_REMOVED_DELETE, S3_OBJECT_REMOVED_DELETE_MARKER_CREATED, S3_OBJECT_RESTORE, S3_OBJECT_RESTORE_COMPLETED, S3_OBJECT_RESTORE_DELETE, S3_OBJECT_RESTORE_POST, S3_OBJECT_TAGGING, S3_OBJECT_TAGGING_DELETE, S3_OBJECT_TAGGING_PUT, S3_REDUCED_REDUNDANCY_LOST_OBJECT, S3_REPLICATION, S3_REPLICATION_OPERATION_FAILED_REPLICATION, S3_REPLICATION_OPERATION_MISSED_THRESHOLD, S3_REPLICATION_OPERATION_NOT_TRACKED, S3_REPLICATION_OPERATION_REPLICATED_AFTER_THRESHOLD, UNKNOWN_TO_SDK_VERSION;
    private Event() {}
    public String toString(){ return null; }
    public static Event fromValue(String p0){ return null; }
    public static Set<Event> knownValues(){ return null; }
}