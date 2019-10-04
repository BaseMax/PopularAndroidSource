.class public Le/a/a/a/a/g/s$a;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/a/g/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# static fields
.field public static final a:Le/a/a/a/a/g/s;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Le/a/a/a/a/g/s;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Le/a/a/a/a/g/s;-><init>(Le/a/a/a/a/g/r;)V

    sput-object v0, Le/a/a/a/a/g/s$a;->a:Le/a/a/a/a/g/s;

    return-void
.end method

.method public static synthetic a()Le/a/a/a/a/g/s;
    .locals 1

    .line 1
    sget-object v0, Le/a/a/a/a/g/s$a;->a:Le/a/a/a/a/g/s;

    return-object v0
.end method
