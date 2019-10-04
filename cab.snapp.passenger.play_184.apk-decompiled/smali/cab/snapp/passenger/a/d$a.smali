.class public final Lcab/snapp/passenger/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcab/snapp/passenger/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createItem(Ljava/lang/String;)Lcab/snapp/passenger/a/d$a;
    .locals 1

    .line 199
    new-instance v0, Lcab/snapp/passenger/a/d$a;

    invoke-direct {v0}, Lcab/snapp/passenger/a/d$a;-><init>()V

    .line 200
    iput-object p0, v0, Lcab/snapp/passenger/a/d$a;->a:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getMobileNumber()Ljava/lang/String;
    .locals 1

    .line 189
    iget-object v0, p0, Lcab/snapp/passenger/a/d$a;->a:Ljava/lang/String;

    return-object v0
.end method
