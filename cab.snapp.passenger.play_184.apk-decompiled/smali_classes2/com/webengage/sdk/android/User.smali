.class public interface abstract Lcom/webengage/sdk/android/User;
.super Ljava/lang/Object;


# virtual methods
.method public abstract deleteAttribute(Ljava/lang/String;)V
.end method

.method public abstract deleteAttributes(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loggedIn(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract loggedOut()V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract login(Ljava/lang/String;)V
.end method

.method public abstract logout()V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/Number;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/util/Date;)V
.end method

.method public abstract setAttribute(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setAttributes(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setBirthDate(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract setBirthDate(Ljava/lang/String;)V
.end method

.method public abstract setCompany(Ljava/lang/String;)V
.end method

.method public abstract setEmail(Ljava/lang/String;)V
.end method

.method public abstract setFirstName(Ljava/lang/String;)V
.end method

.method public abstract setGender(Lcom/webengage/sdk/android/utils/Gender;)V
.end method

.method public abstract setHashedEmail(Ljava/lang/String;)V
.end method

.method public abstract setHashedPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setLastName(Ljava/lang/String;)V
.end method

.method public abstract setLocation(DD)V
.end method

.method public abstract setOptIn(Lcom/webengage/sdk/android/Channel;Z)V
.end method

.method public abstract setPhoneNumber(Ljava/lang/String;)V
.end method

.method public abstract setUserProfile(Lcom/webengage/sdk/android/UserProfile;)V
.end method
