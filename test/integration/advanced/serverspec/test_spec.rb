require_relative '../../helper_spec.rb'

describe user('label') do
  it { should exist }
  it { should belong_to_group 'sudo' }
  it { should have_uid 4000 }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDbakoTSJHYJ88J3//celPFG1kAXv0WvH0o1WkJmrjZe1nWvpHArSv9MmELh3QOu2L3f87Yx8p0kzz0wTQowQisrspFSI6lvIJ+2aapx4J+4O+9IRR+XRcw6giD4OGfTH3af8lgAmVvrcfP41NH4l/jl2Fs+BjeCudTTFemy6L8wlHZPOdsHFs/71aAAcUqpLmrBECHzHBo+LzNZ2ZKy7s+V6RNR5TmWUdupQGsuE6C5yY2AZQ3cFxOmhPJsEVzQSZneCMfNQI3qfAYvXRQNXxQjCaXBJH7S+cCnf8kIrr+Ntfu5A54iyuAZ3SWVCLvym29ZTN0RH8fCvH9zqC5F0r/ label1' }
end

describe user('ops') do
  it { should exist }
  it { should belong_to_group 'adm' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDLql1khoXEH/pThpLSDwJNBIEHkjrBggjEvRCqCFYvE1Neavc6iuLSzjLdnj74LNrPEjY+xcjAcPmgwxo8+WKpLL7Iy8e9IGH3lwB05x9jfnw2H1ZRnZZxF+wV/ei/vfCmRyt2cqv+DLomg18RDTnyTk2pvSEvL0xkRn5QRbzxqbnB+9xmItTjdtq/ZDYRgFYn2ZPfokFyyr3KpwpK0gNcpFhCF94CvExKpu6SFPTv+ERnFvHEN9d8SlzwkyCP4yqrfOjFuVUuZf2FtAkDx0d4cXo0i7VUM/hOthUNFpmljZLhkxafPxwp50Q/xRe7MvDQMrEPGPZ/pubOwzqVmMWH daniels1' }
  #TODO: should check  key_options : 'no-port-forwarding'
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCxAqbTlltSFlRY+gQyAx3j0W+WDnahZYbECAXiwNqAHG7PP8GSEDVkfZTkJdlu9PoB/B3nW2R/Q3//IxUfzRsUnjUzl0WXbhz331n5bHtgJlg82MGqwbNjN0yMR/GB4pQKeExYOLKi/7jI/wkOAJ4X9Bv9skEK/mHAWWPrBf/5C5qWUOxVC1+he3iaU+LSbiL6uiNs8S49fiGno8tBkBFgth+9gqdCLRAFVe2dzJJK1nSQTffHCs12pJs2S3yBD9KkUQJO51tByP4qO3549iwLo8hQnqtFULMpL+NN5Muk1bFZ2jW+0Sri1bhVS58llZCuoENZsLf/+xejbfwJAk4h daniels2' }
  #TODO: should check  key_options : 'no-port-forwarding'
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDhiDPE4S4K6AGJFRSIB5xVoIlKtgjVUVHK1WhT0hD/I3nZ3AFszqDXUz4eREDlPSfMsvNCuAd1Mxwg2vx1Udbzf0M5OH1DDgYyVeJXXB5/B2rpX7vm0A1Hxx17mMHg9OrCNKNn8B83g6IqAGM6P3VKHqnRQ9kLpPcki65gMx06R2dQ1Dh5kks2yOjyx7Mjut0rL9Ig/b9ysMMC1YjMupC8vb31Dhy8pVi1F/RT/7M6PwM4Kjh3fdzgqvQRxDrmky8kbXJj+TXU6pIM1mZtZyENddUCA0rDNtpi6yIaAR9aJkcPXxPpblkWjYAO++sukz88BKWt0Z+nLx9JUhwXtoW7 stewart1' }
end

describe user('dev') do
  it { should exist }
  it { should belong_to_group 'ops' }
  it { should belong_to_group 'lp' }
  it { have_login_shell '/bin/false' }
  it { should have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC2Pq3M7AgeBjmNII6HGsKd2uaXFIfaljpNg1Rf6y3iGP84wC82bMfZTSIhnzJ4qwHj7Bzn8oiMmqtyeGcmEwLXm5f7mk3lj9NmxUEfbuWsPoSX4VHIney0F2cjrYRAHua8vZ50OrqYvRaBNttx+pCsub/Kw/t91PQvz7s5ML12DfhlfbE5f/g+ZrKHBxsn6Vw0VqN1Cx5cecaN+9NbdwTV25/RVsXC6v9TQlIqWR+znt4ZVxUSCTAbGc51tmauoleZee2XBkAO7xmJ7zPQEndhErq/zm0euZGx1xGIjQ7dVBK8t1ah2UdBS4pSHgjhDulo0hr4gIubQ0FSV+8cWCNN vodka1' }
  #key_options : 'no-port-forwarding'
  it { should_not have_authorized_key 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCvy3wrbh9hwSP0WrwXSFW4AujinW+xiDQn7RLJ8UcVZ+Yf4EmV6GTvjjJjIegIKjnH2xiRDjZ1qaSZzxW7/uyVxPrjhGAE8iPQAGcLEEcpg4IwlFpd3+7NgCKLdVHozH6z+h3G95otKQZLmKq9lzkfVyhDzTjU2qsnSQPitDrPY/tngN1gnZHQm2CUh4gamtOfxtPKlOqQ/t0iXJU48QfyN33XWr8M5/2FWP9jDyvxEjpCRW2Qu2+8uQONPOHMtkLW70G2+KVN90fkOXMnDotm+aY1OluUcXgrBakEctHNIWoKSUbcdOw1JkLY3Ojl11lIdXn267A1t70FaEXG8cIf raki1' }
end

