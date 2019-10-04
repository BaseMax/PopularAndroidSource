package com.farsitel.bazaar.data.entity;

import h.f.b.f;
import h.f.b.j;

/* compiled from: ErrorModel.kt */
public abstract class ErrorModel extends Throwable {
    public final String message;

    /* compiled from: ErrorModel.kt */
    public static final class DatabaseError extends ErrorModel {
        public final String message;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public DatabaseError(String str) {
            super(str, null);
            j.b(str, "message");
            this.message = str;
        }

        public static /* synthetic */ DatabaseError copy$default(DatabaseError databaseError, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = databaseError.getMessage();
            }
            return databaseError.copy(str);
        }

        public final String component1() {
            return getMessage();
        }

        public final DatabaseError copy(String str) {
            j.b(str, "message");
            return new DatabaseError(str);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof DatabaseError) && j.a((Object) getMessage(), (Object) ((DatabaseError) obj).getMessage()));
        }

        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            String message2 = getMessage();
            if (message2 != null) {
                return message2.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "DatabaseError(message=" + getMessage() + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class Error extends ErrorModel {
        public final String message;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Error(String str) {
            super(str, null);
            j.b(str, "message");
            this.message = str;
        }

        public static /* synthetic */ Error copy$default(Error error, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = error.getMessage();
            }
            return error.copy(str);
        }

        public final String component1() {
            return getMessage();
        }

        public final Error copy(String str) {
            j.b(str, "message");
            return new Error(str);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof Error) && j.a((Object) getMessage(), (Object) ((Error) obj).getMessage()));
        }

        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            String message2 = getMessage();
            if (message2 != null) {
                return message2.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "Error(message=" + getMessage() + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static abstract class Feature extends ErrorModel {
        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Feature(String str) {
            super(str, null);
            j.b(str, "message");
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class Http extends ErrorModel {
        public final ErrorCode errorCode;
        public final String message;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Http(String str, ErrorCode errorCode2) {
            super(str, null);
            j.b(str, "message");
            j.b(errorCode2, "errorCode");
            this.message = str;
            this.errorCode = errorCode2;
        }

        public static /* synthetic */ Http copy$default(Http http, String str, ErrorCode errorCode2, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = http.getMessage();
            }
            if ((i2 & 2) != 0) {
                errorCode2 = http.errorCode;
            }
            return http.copy(str, errorCode2);
        }

        public final String component1() {
            return getMessage();
        }

        public final ErrorCode component2() {
            return this.errorCode;
        }

        public final Http copy(String str, ErrorCode errorCode2) {
            j.b(str, "message");
            j.b(errorCode2, "errorCode");
            return new Http(str, errorCode2);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001e, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.errorCode, (java.lang.Object) r3.errorCode) != false) goto L_0x0023;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0023
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.ErrorModel.Http
                if (r0 == 0) goto L_0x0021
                com.farsitel.bazaar.data.entity.ErrorModel$Http r3 = (com.farsitel.bazaar.data.entity.ErrorModel.Http) r3
                java.lang.String r0 = r2.getMessage()
                java.lang.String r1 = r3.getMessage()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0021
                com.farsitel.bazaar.data.entity.ErrorCode r0 = r2.errorCode
                com.farsitel.bazaar.data.entity.ErrorCode r3 = r3.errorCode
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0021
                goto L_0x0023
            L_0x0021:
                r3 = 0
                return r3
            L_0x0023:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.ErrorModel.Http.equals(java.lang.Object):boolean");
        }

        public final ErrorCode getErrorCode() {
            return this.errorCode;
        }

        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            String message2 = getMessage();
            int i2 = 0;
            int hashCode = (message2 != null ? message2.hashCode() : 0) * 31;
            ErrorCode errorCode2 = this.errorCode;
            if (errorCode2 != null) {
                i2 = errorCode2.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "Http(message=" + getMessage() + ", errorCode=" + this.errorCode + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class NetworkConnection extends ErrorModel {
        public final String message;
        public final Throwable throwable;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public NetworkConnection(String str, Throwable th) {
            super(str, null);
            j.b(str, "message");
            j.b(th, "throwable");
            this.message = str;
            this.throwable = th;
        }

        public static /* synthetic */ NetworkConnection copy$default(NetworkConnection networkConnection, String str, Throwable th, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = networkConnection.getMessage();
            }
            if ((i2 & 2) != 0) {
                th = networkConnection.throwable;
            }
            return networkConnection.copy(str, th);
        }

        public final String component1() {
            return getMessage();
        }

        public final Throwable component2() {
            return this.throwable;
        }

        public final NetworkConnection copy(String str, Throwable th) {
            j.b(str, "message");
            j.b(th, "throwable");
            return new NetworkConnection(str, th);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001e, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.throwable, (java.lang.Object) r3.throwable) != false) goto L_0x0023;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0023
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.ErrorModel.NetworkConnection
                if (r0 == 0) goto L_0x0021
                com.farsitel.bazaar.data.entity.ErrorModel$NetworkConnection r3 = (com.farsitel.bazaar.data.entity.ErrorModel.NetworkConnection) r3
                java.lang.String r0 = r2.getMessage()
                java.lang.String r1 = r3.getMessage()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0021
                java.lang.Throwable r0 = r2.throwable
                java.lang.Throwable r3 = r3.throwable
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0021
                goto L_0x0023
            L_0x0021:
                r3 = 0
                return r3
            L_0x0023:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.ErrorModel.NetworkConnection.equals(java.lang.Object):boolean");
        }

        public String getMessage() {
            return this.message;
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public int hashCode() {
            String message2 = getMessage();
            int i2 = 0;
            int hashCode = (message2 != null ? message2.hashCode() : 0) * 31;
            Throwable th = this.throwable;
            if (th != null) {
                i2 = th.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "NetworkConnection(message=" + getMessage() + ", throwable=" + this.throwable + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class NotFound extends ErrorModel {
        public final String message;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public NotFound(String str) {
            super(str, null);
            j.b(str, "message");
            this.message = str;
        }

        public static /* synthetic */ NotFound copy$default(NotFound notFound, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = notFound.getMessage();
            }
            return notFound.copy(str);
        }

        public final String component1() {
            return getMessage();
        }

        public final NotFound copy(String str) {
            j.b(str, "message");
            return new NotFound(str);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof NotFound) && j.a((Object) getMessage(), (Object) ((NotFound) obj).getMessage()));
        }

        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            String message2 = getMessage();
            if (message2 != null) {
                return message2.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "NotFound(message=" + getMessage() + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class NotImplemented extends ErrorModel {
        public static final NotImplemented INSTANCE = new NotImplemented();

        public NotImplemented() {
            super("Not Implemented", null);
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class RateLimitExceeded extends ErrorModel {
        public final String message;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public RateLimitExceeded(String str) {
            super(str, null);
            j.b(str, "message");
            this.message = str;
        }

        public static /* synthetic */ RateLimitExceeded copy$default(RateLimitExceeded rateLimitExceeded, String str, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = rateLimitExceeded.getMessage();
            }
            return rateLimitExceeded.copy(str);
        }

        public final String component1() {
            return getMessage();
        }

        public final RateLimitExceeded copy(String str) {
            j.b(str, "message");
            return new RateLimitExceeded(str);
        }

        public boolean equals(Object obj) {
            return this == obj || ((obj instanceof RateLimitExceeded) && j.a((Object) getMessage(), (Object) ((RateLimitExceeded) obj).getMessage()));
        }

        public String getMessage() {
            return this.message;
        }

        public int hashCode() {
            String message2 = getMessage();
            if (message2 != null) {
                return message2.hashCode();
            }
            return 0;
        }

        public String toString() {
            return "RateLimitExceeded(message=" + getMessage() + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class Server extends ErrorModel {
        public final String message;
        public final Throwable throwable;

        /* JADX INFO: super call moved to the top of the method (can break code semantics) */
        public Server(String str, Throwable th) {
            super(str, null);
            j.b(str, "message");
            j.b(th, "throwable");
            this.message = str;
            this.throwable = th;
        }

        public static /* synthetic */ Server copy$default(Server server, String str, Throwable th, int i2, Object obj) {
            if ((i2 & 1) != 0) {
                str = server.getMessage();
            }
            if ((i2 & 2) != 0) {
                th = server.throwable;
            }
            return server.copy(str, th);
        }

        public final String component1() {
            return getMessage();
        }

        public final Throwable component2() {
            return this.throwable;
        }

        public final Server copy(String str, Throwable th) {
            j.b(str, "message");
            j.b(th, "throwable");
            return new Server(str, th);
        }

        /* JADX WARNING: Code restructure failed: missing block: B:6:0x001e, code lost:
            if (h.f.b.j.a((java.lang.Object) r2.throwable, (java.lang.Object) r3.throwable) != false) goto L_0x0023;
         */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public boolean equals(java.lang.Object r3) {
            /*
                r2 = this;
                if (r2 == r3) goto L_0x0023
                boolean r0 = r3 instanceof com.farsitel.bazaar.data.entity.ErrorModel.Server
                if (r0 == 0) goto L_0x0021
                com.farsitel.bazaar.data.entity.ErrorModel$Server r3 = (com.farsitel.bazaar.data.entity.ErrorModel.Server) r3
                java.lang.String r0 = r2.getMessage()
                java.lang.String r1 = r3.getMessage()
                boolean r0 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r1)
                if (r0 == 0) goto L_0x0021
                java.lang.Throwable r0 = r2.throwable
                java.lang.Throwable r3 = r3.throwable
                boolean r3 = h.f.b.j.a((java.lang.Object) r0, (java.lang.Object) r3)
                if (r3 == 0) goto L_0x0021
                goto L_0x0023
            L_0x0021:
                r3 = 0
                return r3
            L_0x0023:
                r3 = 1
                return r3
            */
            throw new UnsupportedOperationException("Method not decompiled: com.farsitel.bazaar.data.entity.ErrorModel.Server.equals(java.lang.Object):boolean");
        }

        public String getMessage() {
            return this.message;
        }

        public final Throwable getThrowable() {
            return this.throwable;
        }

        public int hashCode() {
            String message2 = getMessage();
            int i2 = 0;
            int hashCode = (message2 != null ? message2.hashCode() : 0) * 31;
            Throwable th = this.throwable;
            if (th != null) {
                i2 = th.hashCode();
            }
            return hashCode + i2;
        }

        public String toString() {
            return "Server(message=" + getMessage() + ", throwable=" + this.throwable + ")";
        }
    }

    /* compiled from: ErrorModel.kt */
    public static final class UnExpected extends ErrorModel {
        public static final UnExpected INSTANCE = new UnExpected();

        public UnExpected() {
            super("unexpected error", null);
        }
    }

    public ErrorModel(String str) {
        super(str);
        this.message = str;
    }

    public String getMessage() {
        return this.message;
    }

    public /* synthetic */ ErrorModel(String str, f fVar) {
        this(str);
    }
}
