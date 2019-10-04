.class public Lcom/crashlytics/android/core/ProcMapEntry;
.super Ljava/lang/Object;
.source "ProcMapEntry.java"


# instance fields
.field public final address:J

.field public final path:Ljava/lang/String;

.field public final perms:Ljava/lang/String;

.field public final size:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/crashlytics/android/core/ProcMapEntry;->address:J

    .line 3
    iput-wide p3, p0, Lcom/crashlytics/android/core/ProcMapEntry;->size:J

    .line 4
    iput-object p5, p0, Lcom/crashlytics/android/core/ProcMapEntry;->perms:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    return-void
.end method
