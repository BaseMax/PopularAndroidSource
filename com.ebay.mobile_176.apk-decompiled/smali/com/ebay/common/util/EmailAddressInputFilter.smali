.class public Lcom/ebay/common/util/EmailAddressInputFilter;
.super Landroid/text/LoginFilter$UsernameFilterGeneric;
.source "EmailAddressInputFilter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Landroid/text/LoginFilter$UsernameFilterGeneric;-><init>()V

    return-void
.end method


# virtual methods
.method public isAllowed(C)Z
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x20

    if-le p1, v1, :cond_3

    const/16 v1, 0x7e

    if-le p1, v1, :cond_0

    goto :goto_1

    :cond_0
    const/16 v1, 0x28

    if-eq p1, v1, :cond_2

    const/16 v1, 0x29

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x2c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3b

    if-eq p1, v1, :cond_2

    const/16 v1, 0x3a

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5c

    if-eq p1, v1, :cond_2

    const/16 v1, 0x22

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5b

    if-eq p1, v1, :cond_2

    const/16 v1, 0x5d

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0

    :cond_3
    :goto_1
    return v0
.end method
