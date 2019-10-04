.class public abstract Lio/fabric/sdk/android/services/common/j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/fabric/sdk/android/services/common/j$a;,
        Lio/fabric/sdk/android/services/common/j$b;
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<unknown>"

    .line 27
    invoke-direct {p0, p1, v0}, Lio/fabric/sdk/android/services/common/j;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lio/fabric/sdk/android/services/common/j;->a:Ljava/lang/String;

    .line 32
    iput-object p2, p0, Lio/fabric/sdk/android/services/common/j;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getExceptionName()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/j;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lio/fabric/sdk/android/services/common/j;->a:Ljava/lang/String;

    return-object v0
.end method
