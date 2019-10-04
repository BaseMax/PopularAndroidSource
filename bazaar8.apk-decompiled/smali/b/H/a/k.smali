.class public Lb/H/a/k;
.super Ljava/lang/Object;
.source "WorkDatabaseMigrations.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/H/a/k$a;
    }
.end annotation


# static fields
.field public static a:Lb/z/a/a;

.field public static b:Lb/z/a/a;

.field public static c:Lb/z/a/a;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lb/H/a/h;

    const/4 v1, 0x1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lb/H/a/h;-><init>(II)V

    sput-object v0, Lb/H/a/k;->a:Lb/z/a/a;

    .line 2
    new-instance v0, Lb/H/a/i;

    const/4 v1, 0x4

    const/4 v2, 0x3

    invoke-direct {v0, v2, v1}, Lb/H/a/i;-><init>(II)V

    sput-object v0, Lb/H/a/k;->b:Lb/z/a/a;

    .line 3
    new-instance v0, Lb/H/a/j;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lb/H/a/j;-><init>(II)V

    sput-object v0, Lb/H/a/k;->c:Lb/z/a/a;

    return-void
.end method
