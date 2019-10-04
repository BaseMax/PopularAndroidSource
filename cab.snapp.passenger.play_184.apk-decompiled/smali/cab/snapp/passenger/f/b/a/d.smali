.class public final Lcab/snapp/passenger/f/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcab/snapp/passenger/f/b/c/b;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcab/snapp/passenger/f/b/a/d;->a:Ljava/lang/String;

    .line 35
    iput-object p2, p0, Lcab/snapp/passenger/f/b/a/d;->b:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getParams()Landroid/os/Bundle;
    .locals 1

    .line 53
    iget-object v0, p0, Lcab/snapp/passenger/f/b/a/d;->b:Landroid/os/Bundle;

    return-object v0
.end method
