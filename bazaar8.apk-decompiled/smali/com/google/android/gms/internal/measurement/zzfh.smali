.class public Lcom/google/android/gms/internal/measurement/zzfh;
.super Ljava/io/IOException;


# instance fields
.field public zzahn:Lc/e/a/b/g/f/Sb;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzahn:Lc/e/a/b/g/f/Sb;

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "CodedInputStream encountered an embedded string or message which claimed to have negative size."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static c()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "CodedInputStream encountered a malformed varint."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static d()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "Protocol message contained an invalid tag (zero)."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static e()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "Protocol message end-group tag did not match expected tag."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static f()Lcom/google/android/gms/internal/measurement/zzfi;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfi;

    const-string v1, "Protocol message tag had invalid wire type."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfi;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static g()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static h()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "Failed to parse the message."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static i()Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/measurement/zzfh;

    const-string v1, "Protocol message had invalid UTF-8."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/measurement/zzfh;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lc/e/a/b/g/f/Sb;)Lcom/google/android/gms/internal/measurement/zzfh;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/measurement/zzfh;->zzahn:Lc/e/a/b/g/f/Sb;

    return-object p0
.end method
