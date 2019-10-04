.class public final Lb/H/i$a$c;
.super Lb/H/i$a;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/H/i$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Lb/H/i$a;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lb/H/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/H/i$a$c;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "SUCCESS"

    return-object v0
.end method
