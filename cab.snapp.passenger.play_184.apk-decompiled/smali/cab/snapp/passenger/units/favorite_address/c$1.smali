.class final Lcab/snapp/passenger/units/favorite_address/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcab/snapp/passenger/units/favorite_address/c;->a(Lcab/snapp/passenger/data/models/FavoriteModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/String;

.field final synthetic b:Lcab/snapp/passenger/units/favorite_address/c;


# direct methods
.method constructor <init>(Lcab/snapp/passenger/units/favorite_address/c;[Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcab/snapp/passenger/units/favorite_address/c$1;->b:Lcab/snapp/passenger/units/favorite_address/c;

    iput-object p2, p0, Lcab/snapp/passenger/units/favorite_address/c$1;->a:[Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 123
    iget-object v0, p0, Lcab/snapp/passenger/units/favorite_address/c$1;->a:[Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    return-void
.end method

.method public final beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
