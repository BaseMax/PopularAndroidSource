.class public final Lb/l/w;
.super Lb/l/c$a;
.source "PropertyChangeRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/l/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb/l/c$a<",
        "Lb/l/j$a;",
        "Lb/l/j;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lb/l/c$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lb/l/j$a;Lb/l/j;ILjava/lang/Void;)V
    .locals 0

    .line 2
    invoke-virtual {p1, p2, p3}, Lb/l/j$a;->a(Lb/l/j;I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lb/l/j$a;

    check-cast p2, Lb/l/j;

    check-cast p4, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2, p3, p4}, Lb/l/w;->a(Lb/l/j$a;Lb/l/j;ILjava/lang/Void;)V

    return-void
.end method
