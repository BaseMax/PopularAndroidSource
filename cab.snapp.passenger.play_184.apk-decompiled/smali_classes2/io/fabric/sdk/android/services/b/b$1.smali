.class final Lio/fabric/sdk/android/services/b/b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/fabric/sdk/android/services/b/b;->deleteOldestInRollOverIfOverMax()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lio/fabric/sdk/android/services/b/b$a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/b/b;


# direct methods
.method constructor <init>(Lio/fabric/sdk/android/services/b/b;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/b$1;->a:Lio/fabric/sdk/android/services/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lio/fabric/sdk/android/services/b/b$a;Lio/fabric/sdk/android/services/b/b$a;)I
    .locals 2

    .line 211
    iget-wide v0, p1, Lio/fabric/sdk/android/services/b/b$a;->b:J

    iget-wide p1, p2, Lio/fabric/sdk/android/services/b/b$a;->b:J

    sub-long/2addr v0, p1

    long-to-int p1, v0

    return p1
.end method

.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 208
    check-cast p1, Lio/fabric/sdk/android/services/b/b$a;

    check-cast p2, Lio/fabric/sdk/android/services/b/b$a;

    invoke-virtual {p0, p1, p2}, Lio/fabric/sdk/android/services/b/b$1;->compare(Lio/fabric/sdk/android/services/b/b$a;Lio/fabric/sdk/android/services/b/b$a;)I

    move-result p1

    return p1
.end method
