.class public final Lb/H/j;
.super Lb/H/n;
.source "PeriodicWorkRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/j$a;
    }
.end annotation


# direct methods
.method public constructor <init>(Lb/H/j$a;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lb/H/n$a;->b:Ljava/util/UUID;

    iget-object v1, p1, Lb/H/n$a;->c:Lb/H/a/c/o;

    iget-object p1, p1, Lb/H/n$a;->d:Ljava/util/Set;

    invoke-direct {p0, v0, v1, p1}, Lb/H/n;-><init>(Ljava/util/UUID;Lb/H/a/c/o;Ljava/util/Set;)V

    return-void
.end method
